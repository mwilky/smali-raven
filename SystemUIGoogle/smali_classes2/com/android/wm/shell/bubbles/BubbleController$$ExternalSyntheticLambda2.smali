.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;->f$1:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onBubbleViewsReady(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;->f$1:Z

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;->f$2:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->$r8$lambda$DkU1LWoD6donyRRgyFc1Kn4FVqo(Lcom/android/wm/shell/bubbles/BubbleController;ZZLcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method
