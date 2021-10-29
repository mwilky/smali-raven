.class Lcom/android/systemui/assist/AssistOrbContainer$1;
.super Ljava/lang/Object;
.source "AssistOrbContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbContainer;

.field final synthetic val$onDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbContainer;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbContainer$1;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistOrbContainer$1;->val$onDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer$1;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/assist/AssistOrbContainer;->access$002(Lcom/android/systemui/assist/AssistOrbContainer;Z)Z

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer$1;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbContainer$1;->val$onDone:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
