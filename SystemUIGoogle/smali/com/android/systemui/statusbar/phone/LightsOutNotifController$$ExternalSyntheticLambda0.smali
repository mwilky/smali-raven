.class public final synthetic Lcom/android/systemui/statusbar/phone/LightsOutNotifController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/LightsOutNotifController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->updateLightsOutView()V

    return-void
.end method
