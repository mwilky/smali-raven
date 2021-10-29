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
.field private static final synthetic $VALUES:[Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

.field public static final enum AVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

.field public static final enum AVAILABLE_AFTER_UNLOCK:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

.field public static final enum UNAVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    new-instance v1, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    const-string v3, "AVAILABLE_AFTER_UNLOCK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE_AFTER_UNLOCK:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    new-instance v3, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    const-string v5, "UNAVAILABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->UNAVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->$VALUES:[Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;
    .locals 4

    sget-object v0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->$VALUES:[Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
