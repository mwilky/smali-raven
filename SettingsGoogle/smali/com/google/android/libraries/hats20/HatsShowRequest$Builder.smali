.class public Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;
.super Ljava/lang/Object;
.source "HatsShowRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/HatsShowRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bottomSheet:Z

.field private final clientActivity:Landroid/app/Activity;

.field private maxPromptWidth:Ljava/lang/Integer;

.field private parentResId:I

.field private requestCode:Ljava/lang/Integer;

.field private siteId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->clientActivity:Landroid/app/Activity;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Client activity is missing."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->clientActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->siteId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->requestCode:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->parentResId:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->maxPromptWidth:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->bottomSheet:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/libraries/hats20/HatsShowRequest;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->siteId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "HatsLibShowRequest"

    const-string v1, "Site ID was not set, no survey will be shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "-1"

    iput-object v0, p0, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->siteId:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/google/android/libraries/hats20/HatsShowRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/hats20/HatsShowRequest;-><init>(Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;Lcom/google/android/libraries/hats20/HatsShowRequest$1;)V

    return-object v0
.end method

.method public forSiteId(Ljava/lang/String;)Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->siteId:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->siteId:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Currently don\'t support multiple site IDs."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Site ID cannot be set to null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
