.class public final Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;
.super Ljava/lang/Object;
.source "ControlViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/ControlViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static findBehaviorClass(ILandroid/service/controls/templates/ControlTemplate;I)Ljava/util/function/Supplier;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$2;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$2;

    goto :goto_0

    :cond_1
    instance-of p0, p1, Landroid/service/controls/templates/ThumbnailTemplate;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$3;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$3;

    goto :goto_0

    :cond_2
    const/16 p0, 0x32

    if-ne p2, p0, :cond_3

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$4;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$4;

    goto :goto_0

    :cond_3
    instance-of p0, p1, Landroid/service/controls/templates/ToggleTemplate;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$5;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$5;

    goto :goto_0

    :cond_4
    instance-of p0, p1, Landroid/service/controls/templates/StatelessTemplate;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$6;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$6;

    goto :goto_0

    :cond_5
    instance-of p0, p1, Landroid/service/controls/templates/ToggleRangeTemplate;

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$7;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$7;

    goto :goto_0

    :cond_6
    instance-of p0, p1, Landroid/service/controls/templates/RangeTemplate;

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$8;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$8;

    goto :goto_0

    :cond_7
    instance-of p0, p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    if-eqz p0, :cond_8

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$9;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$9;

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$10;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$10;

    :goto_0
    return-object p0
.end method
