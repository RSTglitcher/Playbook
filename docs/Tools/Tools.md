# Engineering Tools

### 1. Data Storage Systems (Structured or Unstructured Data Repositories)
These platforms serve as persistent data sources for analytics or operations.

| Platform                   | Definition                                                                                      | Role in Data Flow                                                                      |
|----------------------------|-------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------|
| BigQuery                   | 	Google’s serverless, fully managed data warehouse that supports SQL queries on large datasets. | 	Data Source & Consumer — stores curated data used for analysis and reporting.         |
| Firestore                  | 	NoSQL document-oriented database from Google Cloud, often used for app backends.               | 	Data Source / Producer — collects operational data, often feeding downstream systems. |
| Google Cloud Storage (GCS) | 	Object storage system for unstructured data (e.g., logs, backups, files).                      | 	Data Source / Landing Zone — holds raw or semi-processed data, often before ETL.      |
| AWS S3                     | 	Amazon's equivalent of GCS — object storage for any kind of data.                              | 	Data Source / Landing Zone — same role as GCS.                                        |
| Salesforce Cloud-based     | CRM platform that stores structured customer and sales data.                                    | 	Data Source — holds business-critical data, often extracted for analytics.            |

### 2. Data Movement / Ingestion & Streaming Platforms
These enable data transport, either in real-time (streaming) or batch.

| Platform     | Definition                                                                                                                                           | Role in Data Flow                                                                                      |
|--------------|------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| Kafka        | 	Distributed event streaming platform used for real-time data pipelines.                                                                             | 	Data Transport / Streaming Producer & Consumer — carries events between systems.                      |
| PubSub       | 	Google Cloud’s message queueing and streaming service, similar to Kafka."	Data Transport / Streaming — supports decoupled ingestion and processing. |
| Http Push V2 | 	Typically refers to push-based ingestion via HTTP endpoints (used in streaming or webhook scenarios).                                               | 	Data Ingestion (Producer) — often pushes event or log data to a processing layer.                     |
| Http Api     | 	RESTful API endpoints that expose or accept data.                                                                                                   | 	Data Producer or Consumer — can serve as either source (ingested data) or sink (data served to apps). |
| Ftps         | 	Secure FTP over SSL for transferring files between systems.	                                                                                        | Data Ingestion — batch file drops used as source for ETL jobs.                                         |
| Sftp         | 	Secure file transfer protocol using SSH. Similar to FTPS but uses different encryption. 	                                                           | Data Ingestion — often used for partner data drops or legacy pipelines.                                |

### 3. Data Transformation / Modeling Tools
These platforms are used to refine, clean, and model data for consumption.


| Platform | Definition                                                                                   | Role in Data Flow                                                                               |
|----------|----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| dbt 	    | Data Build Tool — manages SQL-based transformation workflows using version-controlled code.  | 	Data Transformer (Producer & Consumer) — consumes raw data and produces curated tables/models. |


