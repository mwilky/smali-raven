.class public final enum Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;
.super Ljava/lang/Enum;
.source "CornerPathRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/ui/CornerPathRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Corner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

.field public static final enum BOTTOM_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

.field public static final enum BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

.field public static final enum TOP_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

.field public static final enum TOP_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    const/4 v1, 0x0

    const-string v2, "BOTTOM_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    new-instance v2, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    const/4 v3, 0x1

    const-string v4, "BOTTOM_RIGHT"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    new-instance v4, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    const/4 v5, 0x2

    const-string v6, "TOP_RIGHT"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->TOP_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    new-instance v6, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    const/4 v7, 0x3

    const-string v8, "TOP_LEFT"

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->TOP_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->$VALUES:[Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;
    .locals 1

    const-class v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->$VALUES:[Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-virtual {v0}, [Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    return-object v0
.end method
