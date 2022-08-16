.class public final Lcom/android/systemui/statusbar/phone/LightsOutNotifController$2;
.super Ljava/lang/Object;
.source "LightsOutNotifController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LightsOutNotifController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LightsOutNotifController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController$2;->this$0:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController$2;->this$0:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mDisplayId:I

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mAppearance:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->updateLightsOutView()V

    return-void
.end method
