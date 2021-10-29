.class Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "TaskStackNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;->this$0:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;->this$0:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->access$000(Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;)V

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;->this$0:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->access$000(Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;)V

    return-void
.end method
