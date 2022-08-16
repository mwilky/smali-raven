.class public final Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;
.super Ljava/lang/Object;
.source "TaskStackNotifier.java"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;->this$0:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskCreated(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;->this$0:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mIntent:Landroid/app/PendingIntent;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TaskStackNotifier"

    const-string v0, "could not send intent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;->this$0:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mIntent:Landroid/app/PendingIntent;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TaskStackNotifier"

    const-string v0, "could not send intent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
