.class public final synthetic Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda20;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda20;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda20;->INSTANCE:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda20;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$5(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method
