.class public Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;
.super Ljava/lang/Object;
.source "HatsDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/HatsDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private advertisingId:Ljava/lang/String;

.field private alreadyBuilt:Z

.field private baseDownloadUrl:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private siteContext:Ljava/lang/String;

.field private siteId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://clients4.google.com/insights/consumersurveys/gk/prompt"

    iput-object v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->baseDownloadUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->alreadyBuilt:Z

    const-string v0, "Context was missing."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/hats20/HatsDownloadRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->siteContext:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->siteId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->advertisingId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->baseDownloadUrl:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/libraries/hats20/HatsDownloadRequest;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->alreadyBuilt:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->alreadyBuilt:Z

    iget-object v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->siteId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "HatsLibDownloadRequest"

    const-string v1, "Site ID was not set, no survey will be downloaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "-1"

    iput-object v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->siteId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->advertisingId:Ljava/lang/String;

    const-string v1, "Advertising ID was missing."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/libraries/hats20/HatsDownloadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;-><init>(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;Lcom/google/android/libraries/hats20/HatsDownloadRequest$1;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot reuse Builder instance once instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public forSiteId(Ljava/lang/String;)Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->siteId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Site ID cannot be set to null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->siteId:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Currently don\'t support multiple site IDs."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBaseDownloadUrlForTesting(Ljava/lang/String;)Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;
    .locals 1

    const-string v0, "Base download URL was missing."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->baseDownloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public withAdvertisingId(Ljava/lang/String;)Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;
    .locals 1

    const-string v0, "Advertising ID was missing."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->advertisingId:Ljava/lang/String;

    return-object p0
.end method

.method public withSiteContext(Ljava/lang/String;)Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;
    .locals 2

    const-string v0, "Site context was missing."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    const-string v0, "HatsLibDownloadRequest"

    const-string v1, "Site context was longer than 1000 chars, please trim it down."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->siteContext:Ljava/lang/String;

    return-object p0
.end method
