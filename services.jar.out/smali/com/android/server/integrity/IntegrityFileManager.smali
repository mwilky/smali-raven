.class public Lcom/android/server/integrity/IntegrityFileManager;
.super Ljava/lang/Object;
.source "IntegrityFileManager.java"


# static fields
.field private static final INDEXING_FILE:Ljava/lang/String; = "indexing"

.field private static final METADATA_FILE:Ljava/lang/String; = "metadata"

.field private static final RULES_FILE:Ljava/lang/String; = "rules"

.field private static final RULES_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "IntegrityFileManager"

.field private static sInstance:Lcom/android/server/integrity/IntegrityFileManager;


# instance fields
.field private final mDataDir:Ljava/io/File;

.field private mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;

.field private mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

.field private final mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

.field private final mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

.field private final mRulesDir:Ljava/io/File;

.field private final mStagingDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    new-instance v0, Lcom/android/server/integrity/parser/RuleBinaryParser;

    invoke-direct {v0}, Lcom/android/server/integrity/parser/RuleBinaryParser;-><init>()V

    new-instance v1, Lcom/android/server/integrity/serializer/RuleBinarySerializer;

    invoke-direct {v1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/integrity/IntegrityFileManager;-><init>(Lcom/android/server/integrity/parser/RuleParser;Lcom/android/server/integrity/serializer/RuleSerializer;Ljava/io/File;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/integrity/parser/RuleParser;Lcom/android/server/integrity/serializer/RuleSerializer;Ljava/io/File;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

    iput-object p2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

    iput-object p3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mDataDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "integrity_rules"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "integrity_staging"

    invoke-direct {v1, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const-string v2, "IntegrityFileManager"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Error creating staging and rules directory"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "metadata"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lcom/android/server/integrity/parser/RuleMetadataParser;->parse(Ljava/io/InputStream;)Lcom/android/server/integrity/model/RuleMetadata;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    const-string v3, "Error reading metadata file."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/integrity/IntegrityFileManager;->updateRuleIndexingController()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/integrity/IntegrityFileManager;
    .locals 2

    const-class v0, Lcom/android/server/integrity/IntegrityFileManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/integrity/IntegrityFileManager;

    invoke-direct {v1}, Lcom/android/server/integrity/IntegrityFileManager;-><init>()V

    sput-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;

    :cond_0
    sget-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private switchStagingRulesDir()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mDataDir:Ljava/io/File;

    const-string/jumbo v3, "temp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error switching staging/rules directory"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateRuleIndexingController()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string v2, "indexing"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lcom/android/server/integrity/parser/RuleIndexingController;

    invoke-direct {v2, v1}, Lcom/android/server/integrity/parser/RuleIndexingController;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "IntegrityFileManager"

    const-string v3, "Error parsing the rule indexing file."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method

.method private writeMetadata(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/integrity/model/RuleMetadata;

    invoke-direct {v0, p2, p3}, Lcom/android/server/integrity/model/RuleMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "metadata"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    invoke-static {v2, v1}, Lcom/android/server/integrity/serializer/RuleMetadataSerializer;->serialize(Lcom/android/server/integrity/model/RuleMetadata;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method


# virtual methods
.method public initialized()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v2, "rules"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v2, "metadata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string v2, "indexing"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readMetadata()Lcom/android/server/integrity/model/RuleMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    return-object v0
.end method

.method public readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/integrity/AppInstallMetadata;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/server/integrity/parser/RuleParseException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;

    invoke-virtual {v2, p1}, Lcom/android/server/integrity/parser/RuleIndexingController;->identifyRulesToEvaluate(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "IntegrityFileManager"

    const-string v4, "Error identifying the rule indexes. Trying unindexed."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v4, "rules"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

    invoke-static {v2}, Lcom/android/server/integrity/parser/RandomAccessObject;->ofFile(Ljava/io/File;)Lcom/android/server/integrity/parser/RandomAccessObject;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/android/server/integrity/parser/RuleParser;->parse(Lcom/android/server/integrity/parser/RandomAccessObject;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public writeRules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/server/integrity/serializer/RuleSerializeException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/integrity/IntegrityFileManager;->writeMetadata(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IntegrityFileManager"

    const-string v2, "Error writing metadata."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    const-string/jumbo v3, "rules"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    const-string v4, "indexing"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    invoke-interface {v2, p3, v3, v0, v1}, Lcom/android/server/integrity/serializer/RuleSerializer;->serialize(Ljava/util/List;Ljava/util/Optional;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0}, Lcom/android/server/integrity/IntegrityFileManager;->switchStagingRulesDir()V

    invoke-direct {p0}, Lcom/android/server/integrity/IntegrityFileManager;->updateRuleIndexingController()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method
