.class public final synthetic Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/PendingIntent$CancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/Bubble;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/Bubble;Ljava/util/concurrent/Executor;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/Bubble;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    return-void
.end method


# virtual methods
.method public final onCancelled(Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->$r8$lambda$YHL0iiGEXEequgt_Z4CtS94MilE(Lcom/android/wm/shell/bubbles/Bubble;Ljava/util/concurrent/Executor;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;Landroid/app/PendingIntent;)V

    return-void
.end method
