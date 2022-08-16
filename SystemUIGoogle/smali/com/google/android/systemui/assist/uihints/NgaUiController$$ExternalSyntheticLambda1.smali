.class public final synthetic Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler$SysUiIsNgaUiChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    return-void
.end method


# virtual methods
.method public final onSysUiIsNgaUiChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->hide()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
