.class public final enum Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;
.super Ljava/lang/Enum;
.source "ControlsComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/dagger/ControlsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

.field public static final enum AVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

.field public static final enum AVAILABLE_AFTER_UNLOCK:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

.field public static final enum UNAVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    const/4 v1, 0x0

    const-string v2, "AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    new-instance v2, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    const/4 v3, 0x1

    const-string v4, "AVAILABLE_AFTER_UNLOCK"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE_AFTER_UNLOCK:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    new-instance v4, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    const/4 v5, 0x2

    const-string v6, "UNAVAILABLE"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->UNAVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->$VALUES:[Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;
    .locals 1

    const-class v0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;
    .locals 1

    sget-object v0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->$VALUES:[Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    return-object v0
.end method
