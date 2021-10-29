.class public final Lcom/google/android/systemui/columbus/ColumbusServiceProxy;
.super Landroid/app/Service;
.source "ColumbusServiceProxy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;,
        Lcom/google/android/systemui/columbus/ColumbusServiceProxy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/ColumbusServiceProxy$Companion;


# instance fields
.field private final binder:Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;

.field private final columbusServiceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->Companion:Lcom/google/android/systemui/columbus/ColumbusServiceProxy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/List;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->binder:Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;

    return-void
.end method

.method public static final synthetic access$checkPermission(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->checkPermission()V

    return-void
.end method

.method public static final synthetic access$getColumbusServiceListeners$p(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/List;

    return-object p0
.end method

.method private final checkPermission()V
    .locals 2

    const-string v0, "com.google.android.columbus.permission.CONFIGURE_COLUMBUS_GESTURE"

    const-string v1, "Must have com.google.android.columbus.permission.CONFIGURE_COLUMBUS_GESTURE permission"

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->binder:Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p0, "intent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
