## Setting up data sources

```scala
//Missing Imports
sealed trait DataSource extends Product with Serializable {
def connectionId: String
def dataFormat: DataType
}

object DataSource {
@@ -43,5 +50,101 @@ object DataSource {
final case class HttpPush(
connectionId: String,
path: String = "/"
) extends DataSource {
val dataFormat: DataType = DataType.Json
}

final case class HttpPull(
connectionId: String,
pubSubTriggerSubscriptionType: PubSubTriggerSubscriptionType, // FIXME: Add tick trigger support to BatchHttpOrigin
path: String = "/",
queryParams: List[(String, String)] = List.empty,
headers: List[ExplicitHeader] = List.empty
) extends DataSource {
val dataFormat: DataType = DataType.Json
}

final case class Kafka(
connectionId: String,
dataFormat: DataType = DataType.Json,
topicNames: Set[String]
) extends DataSource

final case class Braze(
connectionId: String,
mode: BrazeEndpointType,
path: String = "/",
headers: List[ExplicitHeader] = Nil
) extends DataSource {
val dataFormat: DataType = DataType.Json
}

object Braze {

    sealed trait BrazeEndpointType {
      def refinedName: BrazeExportEndpointType
    }
    object BrazeEndpointType       {

      case object Campaigns extends BrazeEndpointType {
        val refinedName: BrazeExportEndpointType = "campaigns"
      }

      case object Canvases extends BrazeEndpointType {
        val refinedName: BrazeExportEndpointType = "canvases"
      }
    }
}

final case class Sqs(
connectionId: String,
queueUrl: String,
dataFormat: DataType = DataType.Json
) extends DataSource

/** @param query
*   A String query containing some number of `#` characters, which are used as positional parameters into which values are injected from
*   the trigger messages (depending on trigger type and configuration)
*   - If `api` is a [[BigQuery.ApiConfig.StandardApiConfig StandardApiConfig]]: Must be a full BigQuery Standard SQL query, and can
*     contain any number of `#` characters
*   - If `api` is a [[BigQuery.ApiConfig.StorageApiConfig StorageApiConfig]]: Must be a single BigQuery SQL `WHERE` clause, containing 0
*     or 1 `#` characters
* @param apiConfig
*   Configuration for either the Standard or Storage Read API specific settings. See
*   [[BigQuery.ApiConfig.StandardApiConfig StandardApiConfig]] or [[BigQuery.ApiConfig.StorageApiConfig StorageApiConfig]]
*/
final case class BigQuery(
connectionId: String,
query: String,
apiConfig: BigQuery.ApiConfig
) extends DataSource {
val dataFormat: DataType = apiConfig.dataFormat
}

object BigQuery {

    sealed trait ApiConfig {
      def dataFormat: DataType
      def pubSubTriggerConfig: BigQueryPubSubTriggerConfig
    }

    case object ApiConfig {

      final case class StandardApiConfig(pubSubTriggerConfig: BigQueryPubSubTriggerConfig) extends ApiConfig {
        val dataFormat: DataType = DataType.Json
      }

      final case class StorageApiConfig(
          pubSubTriggerConfig: BigQueryPubSubTriggerConfig,
          table: BigQueryTable,
          columns: List[String] = List.empty
      ) extends ApiConfig {
        val dataFormat: DataType = DataType.Avro
      }

      object StorageApiConfig {
        final case class BigQueryTable(datasetId: String, tableId: String, projectIdOverride: Option[String] = None)
      }
    }
}
}
```