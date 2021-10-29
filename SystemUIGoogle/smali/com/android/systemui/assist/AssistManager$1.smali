.class Lcom/android/systemui/assist/AssistManager$1;
.super Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$1;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$1;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistManager;->access$000(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistOrbController;->postHide()V

    return-void
.end method

.method public onShown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$1;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistManager;->access$000(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistOrbController;->postHide()V

    return-void
.end method
