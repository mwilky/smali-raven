.class final Lcom/android/server/timedetector/ConfigurationInternal$Builder;
.super Ljava/lang/Object;
.source "ConfigurationInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/ConfigurationInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private mAutoDetectionEnabled:Z

.field private mUserConfigAllowed:Z

.field private final mUserId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabled:Z

    return v0
.end method


# virtual methods
.method build()Lcom/android/server/timedetector/ConfigurationInternal;
    .locals 2

    new-instance v0, Lcom/android/server/timedetector/ConfigurationInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/timedetector/ConfigurationInternal;-><init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;Lcom/android/server/timedetector/ConfigurationInternal$1;)V

    return-object v0
.end method

.method setAutoDetectionEnabled(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabled:Z

    return-object p0
.end method

.method setUserConfigAllowed(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return-object p0
.end method
