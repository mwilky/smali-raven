.class public Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;
.super Landroid/app/Service;
.source "ElmyraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;
    }
.end annotation


# instance fields
.field private final mBinder:Lcom/google/android/systemui/elmyra/IElmyraService$Stub;

.field private final mElmyraServiceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/List;

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;-><init>(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mBinder:Lcom/google/android/systemui/elmyra/IElmyraService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->checkPermission()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/List;

    return-object p0
.end method

.method private checkPermission()V
    .locals 2

    const-string v0, "com.google.android.elmyra.permission.CONFIGURE_ASSIST_GESTURE"

    const-string v1, "Must have com.google.android.elmyra.permission.CONFIGURE_ASSIST_GESTURE permission"

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mBinder:Lcom/google/android/systemui/elmyra/IElmyraService$Stub;

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
