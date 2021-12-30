.class public final Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NameAndIcon"
.end annotation


# instance fields
.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final iconId:I

.field public final name:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->icon:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->iconId:I

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->packageName:Ljava/lang/String;

    return-void
.end method
