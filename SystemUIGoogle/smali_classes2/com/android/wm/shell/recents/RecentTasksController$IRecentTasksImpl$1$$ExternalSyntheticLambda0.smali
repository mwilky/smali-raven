.class public final synthetic Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/wm/shell/recents/IRecentTasksListener;

    invoke-static {p1}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;->$r8$lambda$IJA2UaUTaKFtF7ziVg2b-V98OuE(Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    return-void
.end method
