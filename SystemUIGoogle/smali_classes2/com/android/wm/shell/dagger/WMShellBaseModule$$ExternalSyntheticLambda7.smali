.class public final synthetic Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda7;

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

    check-cast p1, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController;

    invoke-static {p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->$r8$lambda$4m8ubcrmK78kUqouq19cKznvPwI(Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController;)Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;

    move-result-object p0

    return-object p0
.end method
