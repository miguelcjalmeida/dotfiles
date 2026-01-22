# Cloud Concepts

**Cloud Benefits:** Agility, Elasticity, Scalability, High Availability, Global Reach, Pay-as-you-go.

**Service Models:**
- IaaS (Infra as a Service) → EC2, S3, VPC, EBS 
- PaaS (Platform as a Service) → Elastic Beanstalk, Lambda, RDS, ECS
- SaaS (Software as a service) → User-facing apps like WorkSpaces, Chime

**Deployment Models:** Public, Private, Hybrid, Multi-cloud

**AWS Global Infrastructure:**
- Region = physical location
- Availability Zone (AZ) = isolated datacenter(s) per region (min of 2)
- Edge Location = CloudFront cache only (outsite region)
- Local Zones = low-latency compute near end-users

**Well-Architected Framework (6 Pillars):**
- Operational Excellence → Run and monitor systems to deliver business value
- Security → Protect information and systems
- Reliability → Recover from infrastructure or service disruptions
- Performance Efficiency → Use computing resources efficiently
- Cost Optimization → Achieve business outcomes at lowest price point
- Sustainability → Minimize environmental impact of cloud workloads

**Horizontal Scaling:** Scale out (more instances) rather than up (bigger hardware) for better performance

# Security & Compliance

**Shared Responsibility Model:**
- AWS → Security of the cloud (infra, hardware).
- You → Security in the cloud (data, IAM, configs).
- The more control you have, the more responsibilities you get 

**IAM (Identity Access Management):** 
- Root user (avoid), Users, Groups, Roles, Policies (JSON), MFA.
- enforce least privilege.

**Encryption:**
- In Transit → TLS/SSL
- At Rest → KMS, SSE-S3, SSE-KMS, SSE-C

**Networking Security:**
- Security Groups = stateful (instance level).
- NACLs (Network Access Control Lists) = stateless (subnet level).

**Compliance Programs:** HIPAA, ISO, PCI DSS (Payment Card Industry Data Security Standard), SOC (System and Organization Controls).

**Monitoring Tools:**
- CloudTrail → track activity logs in your account
- CloudWatch → metrics, alarms
- GuardDuty → threat detection using ML (Machine Learning)
- Shield → DDoS protection
- Config → compliance rules
- Trusted Advisor → best-practice checks

# Technology

**Compute:**
- EC2 (Elastic Compute Cloud) (VMs) → On-Demand, Reserved, Spot, Savings Plans
- Fargate → serverless; run apps in containers without provisioning vms; works with ECS & EKS
- ECS (Elastic Container Service) / EKS (Elastic Kubernetes Service) → container orchestration
- Lambda → serverless, pay-per-request
- Elastic Beanstalk → PaaS for apps

**Networking:**
- VPC = isolated virtual network
- Subnets (public/private)
- Route 53 = DNS, routing, health checks
- CloudFront = CDN for hosting media (200+ global edge locations)
- API Gateway = Create, publish, and manage Http/Rest APIs

**Storage:**
- S3 (Simple Storage Service) (object) → 99.999999999% durability
    - **Classes:** Standard, IA, One Zone-IA, Glacier, Glacier Deep Archive
- EBS (Elastic Block Store) = block storage for EC2 (attach; persistence)
- EFS (Elastic File System) = elastic file share
- FSx (File System X) = managed Windows/Linux file systems
- Storage Gateway = hybrid cloud connects on-prem to cloud for unlimited storage (S3, EBS, FSx, Tape) 

**Databases:**
- RDS (Relational Databases) = managed SQL (MariaDB, MySql, Oracle, PostgreSQL)
- Aurora = 5x throughput but MySQL/Postgres compatible only
- DynamoDB = NoSQL millisecond latency
- Redshift = data warehouse (analytics)
- Elasticache = In-memory caching (Redis, Memcached), microsecond latency
- Neptune = Graph DB 

**Migration:** 
- Snowball - Physical data transport 
- DMS (Database Migration Service) - simplify migrating dbs to aws

**AI Services:** 
- Rekognition → Image/Video recognition (object/people/scenes/etc)
- Polly  → text to speech
- Transcribe  → speech to text
- Textract → Extract texts & tables from documents (handwriting & printed text)
- Comprehend →  Natural language processing (sentiment, entities, topics)
- Lex → Chatbots & conversational AI
- Kendra → Intelligent search engine 
- Lookout → Anomaly detection (equipment, metrics, vision)

**ML Services (build/train):**
- SageMaker → Help data scientists create their own custom models
- SageMaker JumpStart → Pretrained models & templates
- EMR (Elastic MapReduce) → Big data processing (Spark, Hadoop)
- Athena → SQL queries on data in S3

**Dev Tools:** CodeCommit, CodeBuild, CodeDeploy, CodePipeline

# Billing & Pricing

**Pricing Models:**
- Compute → On-Demand, Reserved, Spot, Savings Plans, Dedicated Hosts
- Storage → Pay per GB + requests
- Data Transfer → In = free, Out = charged

**Free Tier:**
**- 12 months:** EC2, S3, RDS
**- Always free:** Lambda (1M req), DynamoDB (25GB)

**Cost Mgmt Tools:**
- AWS Pricing Calculator
- TCO Calculator (on-prem vs AWS)
- Cost Explorer (spend trends)
- Budgets (alerts)
- Billing Dashboard

**Consolidated Billing:** Single invoice + volume discounts.

**AWS Organizations:** Central mgmt, consolidated billing, SCPs.

**Support Plans:**
- Basic = Free
- Developer = Email support
- Business = 24×7
- Enterprise = TAM

# Important Notes

**EC2 health checks:** System vs Instance.
RDS Multi-AZ = disaster recovery.
S3 durability = 11 nines, availability depends on storage class.

**CapEx vs OpEx:** On-prem = CapEx; Cloud = OpEx.
Elasticity = auto scale up/down; Scalability = handle steady growth.
