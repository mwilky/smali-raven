.class public Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
.super Landroid/content/integrity/IAppIntegrityManager$Stub;
.source "AppIntegrityManagerServiceImpl.java"


# static fields
.field public static final ADB_INSTALLER:Ljava/lang/String; = "adb"

.field private static final ALLOWED_INSTALLERS_METADATA_NAME:Ljava/lang/String; = "allowed-installers"

.field private static final ALLOWED_INSTALLER_DELIMITER:Ljava/lang/String; = ","

.field private static final BASE_APK_FILE:Ljava/lang/String; = "base.apk"

.field public static final DEBUG_INTEGRITY_COMPONENT:Z = false

.field private static final INSTALLER_PACKAGE_CERT_DELIMITER:Ljava/lang/String; = "\\|"

.field private static final PACKAGE_INSTALLER:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final TAG:Ljava/lang/String; = "AppIntegrityManagerServiceImpl"

.field private static final UNKNOWN_INSTALLER:Ljava/lang/String; = ""


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mParserSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.google.android.packageinstaller"

    const-string v2, "com.android.packageinstaller"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->PACKAGE_INSTALLER:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/integrity/engine/RuleEvaluationEngine;Lcom/android/server/integrity/IntegrityFileManager;Landroid/os/Handler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManagerInternal;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;",
            "Lcom/android/server/integrity/engine/RuleEvaluationEngine;",
            "Lcom/android/server/integrity/IntegrityFileManager;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p3, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mParserSupplier:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    iput-object p5, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    iput-object p6, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, p6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Mime type malformed: should never happen."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$000(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->handleIntegrityVerification(Landroid/content/Intent;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .locals 9

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppIntegrityManagerServiceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v8, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    sget-object v4, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-static {}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->getRuleEvaluationEngine()Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    move-result-object v5

    invoke-static {}, Lcom/android/server/integrity/IntegrityFileManager;->getInstance()Lcom/android/server/integrity/IntegrityFileManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v7

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/integrity/engine/RuleEvaluationEngine;Lcom/android/server/integrity/IntegrityFileManager;Landroid/os/Handler;)V

    return-object v8
.end method

.method private extractSourceStamp(Landroid/net/Uri;Landroid/content/integrity/AppInstallMetadata$Builder;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallationPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not read APK directory"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    nop

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/lang/String;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->isPresent()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampPresent(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampVerified(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampTrusted(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_3

    nop

    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    :try_start_5
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/integrity/AppInstallMetadata$Builder;->setStampCertificateHash(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    nop

    goto :goto_2

    :catch_1
    move-exception v2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Error computing source stamp certificate digest"

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Installation path is null, package not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAllowedInstallers(Landroid/content/pm/PackageInfo;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "allowed-installers"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    nop

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v9, v10, :cond_0

    aget-object v9, v8, v5

    invoke-direct {p0, v9}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v8, v11

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    array-length v9, v8

    if-ne v9, v11, :cond_1

    aget-object v9, v8, v5

    invoke-direct {p0, v9}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    :goto_1
    nop

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getAllowedRuleProviderSystemApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getCallerPackageNameOrThrow(I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallingRulePusherPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only system packages specified in config_integrityRuleProviderPackages are allowed to call this method."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCallingRulePusherPackageName(I)Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_1
    return-object v3
.end method

.method private getCertificateFingerprint(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    const-string v1, "X509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error getting X509Certificate"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    :goto_0
    nop

    if-eqz v2, :cond_1

    :try_start_2
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v5

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Error error computing fingerprint"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "X509 Certificate not found"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error getting CertificateFactory"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getInstallationPath(Landroid/net/Uri;)Ljava/io/File;
    .locals 5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read file for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find file for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null data uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInstallerCertificateFingerprint(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "adb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCertificateFingerprint(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installer package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppIntegrityManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getInstallerPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8

    nop

    const-string v0, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "adb"

    return-object v1

    :cond_0
    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "AppIntegrityManagerServiceImpl"

    const-string v4, ""

    if-gez v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installer cannot be determined: installer: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " installer UID: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return-object v4

    :cond_2
    sget-object v5, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->PACKAGE_INSTALLER:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_3

    const-string v5, "Installer is package installer but originating UID not found."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No package found associated with originating UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4
    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    :cond_5
    return-object v0
.end method

.method private getMultiApkInfo(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .locals 11

    const-string v0, "AppIntegrityManagerServiceImpl"

    new-instance v1, Ljava/io/File;

    const-string v2, "base.apk"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const v4, 0x8000080

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v8

    goto :goto_1

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found package info from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Base package info cannot be found from installation directory"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPackageArchiveInfo(Landroid/net/Uri;)Landroid/content/pm/PackageInfo;
    .locals 16

    invoke-direct/range {p0 .. p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallationPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v2, p0

    :try_start_0
    iget-object v0, v2, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mParserSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/PackageParser2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v3, v1, v0, v0}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    const v15, 0x8000080

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroid/content/pm/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/ParsingPackageRead;Z)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    new-instance v12, Landroid/content/pm/PackageUserState;

    invoke-direct {v12}, Landroid/content/pm/PackageUserState;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    const/4 v14, 0x0

    move-object v4, v0

    move v6, v15

    invoke-static/range {v4 .. v14}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v4

    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AppIntegrityManagerServiceImpl"

    invoke-static {v5, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3

    :cond_2
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Installation path is null, package not found"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPackageListForUid(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "No packages were found for uid: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppIntegrityManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SHA-256 algorithm not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .locals 4

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package signature not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleIntegrityVerification(Landroid/content/Intent;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "AppIntegrityManagerServiceImpl"

    const-string v0, "android.content.pm.extra.VERIFICATION_ID"

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallerPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->integrityCheckIncludesRuleProvider()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {v1, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isRuleProvider(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, v4, v6}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    return-void

    :cond_0
    const-string v7, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageArchiveInfo(Landroid/net/Uri;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    move-object v14, v7

    if-nez v14, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot parse package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, v4, v6}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    return-void

    :cond_1
    invoke-direct {v1, v14}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCertificateFingerprint(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v7

    move-object v13, v7

    nop

    invoke-direct {v1, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallerCertificateFingerprint(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v12, v7

    new-instance v7, Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-direct {v7}, Landroid/content/integrity/AppInstallMetadata$Builder;-><init>()V

    move-object v10, v7

    invoke-direct {v1, v15}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-virtual {v10, v13}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAppCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    const-string v7, "android.intent.extra.LONG_VERSION_CODE"

    const-wide/16 v8, -0x1

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Landroid/content/integrity/AppInstallMetadata$Builder;->setVersionCode(J)Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-direct {v1, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setInstallerName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-virtual {v10, v12}, Landroid/content/integrity/AppInstallMetadata$Builder;->setInstallerCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-direct {v1, v15}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isSystemApp(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v10, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsPreInstalled(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-direct {v1, v14}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedInstallers(Landroid/content/pm/PackageInfo;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAllowedInstallersAndCert(Ljava/util/Map;)Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v7, v10}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->extractSourceStamp(Landroid/net/Uri;Landroid/content/integrity/AppInstallMetadata$Builder;)V

    invoke-virtual {v10}, Landroid/content/integrity/AppInstallMetadata$Builder;->build()Landroid/content/integrity/AppInstallMetadata;

    move-result-object v7

    move-object v11, v7

    iget-object v7, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    invoke-virtual {v7, v11}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->evaluate(Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object v7

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getMatchedRules()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    const-string v7, "Integrity check of %s result: %s due to %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v15, v8, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x2

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getMatchedRules()Ljava/util/List;

    move-result-object v17

    aput-object v17, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v7, 0xf7

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11}, Landroid/content/integrity/AppInstallMetadata;->getVersionCode()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getLoggingResponse()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->isCausedByAppCertRule()Z

    move-result v20

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->isCausedByInstallerRule()Z

    move-result v21

    move-object v8, v15

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-wide/from16 v10, v17

    move-object/from16 v17, v12

    move-object v12, v0

    move-object/from16 v18, v13

    move/from16 v13, v19

    move-object/from16 v19, v14

    move/from16 v14, v20

    move-object/from16 v20, v15

    move/from16 v15, v21

    invoke-static/range {v7 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IZZ)V

    iget-object v7, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v8

    sget-object v9, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    if-ne v8, v9, :cond_3

    move v8, v6

    goto :goto_1

    :cond_3
    move v8, v5

    :goto_1
    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v5, "Error handling integrity verification"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v6, "Invalid input to integrity verification"

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    :goto_2
    nop

    :goto_3
    return-void
.end method

.method private integrityCheckIncludesRuleProvider()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "verify_integrity_for_rule_provider"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private isRuleProvider(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method static synthetic lambda$extractSourceStamp$1(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrentRuleSetProvider()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {v0}, Lcom/android/server/integrity/IntegrityFileManager;->readMetadata()Lcom/android/server/integrity/model/RuleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/integrity/model/RuleMetadata;->getRuleProvider()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/integrity/model/RuleMetadata;->getRuleProvider()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getCurrentRuleSetVersion()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {v0}, Lcom/android/server/integrity/IntegrityFileManager;->readMetadata()Lcom/android/server/integrity/model/RuleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/integrity/model/RuleMetadata;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/integrity/model/RuleMetadata;->getVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getCurrentRules()Landroid/content/pm/ParceledListSlice;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/integrity/IntegrityFileManager;->readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppIntegrityManagerServiceImpl"

    const-string v3, "Error getting current rules"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getWhitelistedRuleProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$updateRuleSet$0$AppIntegrityManagerServiceImpl(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    .locals 9

    const-string v0, "AppIntegrityManagerServiceImpl"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/integrity/IntegrityFileManager;->writeRules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Error writing rules."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xf8

    invoke-static {v2, v1, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    xor-int/lit8 v3, v1, 0x1

    const-string v4, "android.content.integrity.extra.STATUS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_1
    iget-object v4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p4

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "Error sending status feedback."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public updateRuleSet(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
