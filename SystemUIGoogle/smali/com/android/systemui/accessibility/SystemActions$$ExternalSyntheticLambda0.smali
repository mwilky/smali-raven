.class public final synthetic Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/SystemActions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/SystemActions;

    return-void
.end method


# virtual methods
.method public final onStateChanged(ZZZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/SystemActions;->registerOrUnregisterDismissNotificationShadeAction()V

    return-void
.end method
