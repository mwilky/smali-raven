.class Lcom/android/systemui/assist/AssistOrbController$1;
.super Ljava/lang/Object;
.source "AssistOrbController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistOrbController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbController;


# direct methods
.method public static synthetic $r8$lambda$GMh5g3ZYVX-AfiLd4NpC3tjjY3w(Lcom/android/systemui/assist/AssistOrbController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbController$1;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/assist/AssistOrbController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbController$1;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbController$1;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistOrbController;->access$100(Lcom/android/systemui/assist/AssistOrbController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbController$1;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistOrbController;->access$000(Lcom/android/systemui/assist/AssistOrbController;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbController$1;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistOrbController;->access$000(Lcom/android/systemui/assist/AssistOrbController;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbController$1;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistOrbController;->access$000(Lcom/android/systemui/assist/AssistOrbController;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/assist/AssistOrbController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/AssistOrbController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/assist/AssistOrbController$1;)V

    const/4 p0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZLjava/lang/Runnable;)V

    return-void
.end method
