.class public Lcom/android/server/security/FileIntegrityService;
.super Lcom/android/server/SystemService;
.source "FileIntegrityService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileIntegrityService"

.field private static sCertFactory:Ljava/security/cert/CertificateFactory;


# instance fields
.field private final mService:Landroid/os/IBinder;

.field private mTrustedCertificates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/FileIntegrityService;->mTrustedCertificates:Ljava/util/Collection;

    new-instance v0, Lcom/android/server/security/FileIntegrityService$1;

    invoke-direct {v0, p0}, Lcom/android/server/security/FileIntegrityService$1;-><init>(Lcom/android/server/security/FileIntegrityService;)V

    iput-object v0, p0, Lcom/android/server/security/FileIntegrityService;->mService:Landroid/os/IBinder;

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/FileIntegrityService;->sCertFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FileIntegrityService"

    const-string v2, "Cannot get an instance of X.509 certificate factory"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000([B)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/server/security/FileIntegrityService;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/security/FileIntegrityService;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/security/FileIntegrityService;->mTrustedCertificates:Ljava/util/Collection;

    return-object v0
.end method

.method private collectCertificate([B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/FileIntegrityService;->mTrustedCertificates:Ljava/util/Collection;

    invoke-static {p1}, Lcom/android/server/security/FileIntegrityService;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid certificate, ignored: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileIntegrityService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private loadAllCertificates()V
    .locals 3

    const-string v0, "etc/security/fsverity"

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const-string v2, "etc/security/fsverity"

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/security/FileIntegrityService;->loadCertificatesFromDirectory(Ljava/nio/file/Path;)V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/security/FileIntegrityService;->loadCertificatesFromDirectory(Ljava/nio/file/Path;)V

    return-void
.end method

.method private loadCertificatesFromDirectory(Ljava/nio/file/Path;)V
    .locals 8

    const-string v0, "FileIntegrityService"

    :try_start_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The certificate file is empty, ignoring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/security/FileIntegrityService;->collectCertificate([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load fs-verity certificate from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/security/FileIntegrityService;->sCertFactory:Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1

    :cond_0
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Expected to contain an X.509 certificate"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onStart()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/security/FileIntegrityService;->loadAllCertificates()V

    iget-object v0, p0, Lcom/android/server/security/FileIntegrityService;->mService:Landroid/os/IBinder;

    const-string v1, "file_integrity"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/security/FileIntegrityService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
