.class public final enum Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;
.super Ljava/lang/Enum;
.source "PerimeterPathGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/ui/PerimeterPathGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Region"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

.field public static final enum BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

.field public static final enum BOTTOM_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

.field public static final enum TOP:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    const/4 v1, 0x0

    const-string v2, "BOTTOM"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    new-instance v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    const/4 v3, 0x1

    const-string v4, "BOTTOM_RIGHT"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    const/4 v5, 0x2

    const-string v6, "RIGHT"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    const/4 v7, 0x3

    const-string v8, "TOP_RIGHT"

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    const/4 v9, 0x4

    const-string v10, "TOP"

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    new-instance v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    const/4 v11, 0x5

    const-string v12, "TOP_LEFT"

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;-><init>(ILjava/lang/String;)V

    new-instance v12, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    const/4 v13, 0x6

    const-string v14, "LEFT"

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;-><init>(ILjava/lang/String;)V

    new-instance v14, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    const/4 v15, 0x7

    const-string v13, "BOTTOM_LEFT"

    invoke-direct {v14, v15, v13}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;-><init>(ILjava/lang/String;)V

    sput-object v14, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    const/16 v13, 0x8

    new-array v13, v13, [Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    aput-object v0, v13, v1

    aput-object v2, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v7

    aput-object v8, v13, v9

    aput-object v10, v13, v11

    const/4 v0, 0x6

    aput-object v12, v13, v0

    aput-object v14, v13, v15

    sput-object v13, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->$VALUES:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;
    .locals 1

    const-class v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->$VALUES:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v0}, [Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    return-object v0
.end method
