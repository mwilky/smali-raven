.class final Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController$updateListeners$1;
.super Ljava/lang/Object;
.source "SplitShadeHeaderController.kt"

# interfaces
.implements Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updateListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController$updateListeners$1;->this$0:Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleCarrierChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController$updateListeners$1;->this$0:Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->access$updateSingleCarrier(Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;Z)V

    return-void
.end method
