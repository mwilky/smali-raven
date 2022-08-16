.class public final enum Lcom/android/systemui/screenshot/CropView$CropBoundary;
.super Ljava/lang/Enum;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CropBoundary"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenshot/CropView$CropBoundary;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field public static final enum BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field public static final enum LEFT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field public static final enum NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field public static final enum RIGHT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field public static final enum TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/screenshot/CropView$CropBoundary;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    new-instance v2, Lcom/android/systemui/screenshot/CropView$CropBoundary;

    const/4 v3, 0x1

    const-string v4, "TOP"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/screenshot/CropView$CropBoundary;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    new-instance v4, Lcom/android/systemui/screenshot/CropView$CropBoundary;

    const/4 v5, 0x2

    const-string v6, "BOTTOM"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/screenshot/CropView$CropBoundary;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    new-instance v6, Lcom/android/systemui/screenshot/CropView$CropBoundary;

    const/4 v7, 0x3

    const-string v8, "LEFT"

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/screenshot/CropView$CropBoundary;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/systemui/screenshot/CropView$CropBoundary;->LEFT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    new-instance v8, Lcom/android/systemui/screenshot/CropView$CropBoundary;

    const/4 v9, 0x4

    const-string v10, "RIGHT"

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/screenshot/CropView$CropBoundary;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/android/systemui/screenshot/CropView$CropBoundary;->RIGHT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/android/systemui/screenshot/CropView$CropBoundary;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/android/systemui/screenshot/CropView$CropBoundary;->$VALUES:[Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenshot/CropView$CropBoundary;
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenshot/CropView$CropBoundary;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->$VALUES:[Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-virtual {v0}, [Lcom/android/systemui/screenshot/CropView$CropBoundary;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object v0
.end method
