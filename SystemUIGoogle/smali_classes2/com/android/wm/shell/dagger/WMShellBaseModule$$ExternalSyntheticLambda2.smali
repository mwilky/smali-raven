.class public final synthetic Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;

    invoke-static {p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->$r8$lambda$SeBFSs3giWhJ98UV5BODL4asfJ8(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;

    move-result-object p0

    return-object p0
.end method
