.class Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
.super Ljava/lang/Object;
.source "TaskFragmentOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskFragmentOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingTaskFragmentEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$EventType;
    }
.end annotation


# static fields
.field static final EVENT_APPEARED:I = 0x0

.field static final EVENT_ERROR:I = 0x4

.field static final EVENT_INFO_CHANGED:I = 0x2

.field static final EVENT_PARENT_INFO_CHANGED:I = 0x3

.field static final EVENT_VANISHED:I = 0x1


# instance fields
.field private mDeferTime:J

.field private final mErrorCallback:Landroid/os/IBinder;

.field private final mEventType:I

.field private final mException:Ljava/lang/Throwable;

.field private final mTaskFragment:Lcom/android/server/wm/TaskFragment;

.field private final mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;


# direct methods
.method private constructor <init>(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(Lcom/android/server/wm/TaskFragment;Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;ILcom/android/server/wm/TaskFragmentOrganizerController$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/TaskFragment;Landroid/window/ITaskFragmentOrganizer;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(Lcom/android/server/wm/TaskFragment;Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/TaskFragment;Landroid/window/ITaskFragmentOrganizer;ILcom/android/server/wm/TaskFragmentOrganizerController$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(Lcom/android/server/wm/TaskFragment;Landroid/window/ITaskFragmentOrganizer;I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/TaskFragment;Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    iput-object p3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mErrorCallback:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mException:Ljava/lang/Throwable;

    iput p5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mErrorCallback:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mException:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/ITaskFragmentOrganizer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mDeferTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mDeferTime:J

    return-wide p1
.end method


# virtual methods
.method isLifecycleEvent()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
