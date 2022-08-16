.class public final Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$onBindViewHolder$2$1;
.super Ljava/lang/Object;
.source "FgsManagerController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $runningApp:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/qs/FgsManagerController$RunningApp;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $this_with:Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;Lcom/android/systemui/qs/FgsManagerController;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;",
            "Lcom/android/systemui/qs/FgsManagerController;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/qs/FgsManagerController$RunningApp;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$onBindViewHolder$2$1;->$this_with:Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;

    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$onBindViewHolder$2$1;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    iput-object p3, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$onBindViewHolder$2$1;->$runningApp:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$onBindViewHolder$2$1;->$this_with:Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;

    iget-object p1, p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    const v0, 0x7f130305

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$onBindViewHolder$2$1;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$onBindViewHolder$2$1;->$runningApp:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/FgsManagerController$RunningApp;

    iget v0, p0, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->userId:I

    iget-object v10, p0, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->packageName:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->timeStarted:J

    sget p0, Lcom/android/systemui/qs/FgsManagerController;->$r8$clinit:I

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v5, 0x2

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v11, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;

    move-object v1, v11

    move-object v2, p1

    move-object v3, v10

    move v4, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;-><init>(Lcom/android/systemui/qs/FgsManagerController;Ljava/lang/String;IIJJ)V

    invoke-interface {p0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerController;->activityManager:Landroid/app/IActivityManager;

    invoke-interface {p0, v10, v0}, Landroid/app/IActivityManager;->stopAppForUser(Ljava/lang/String;I)V

    return-void
.end method
