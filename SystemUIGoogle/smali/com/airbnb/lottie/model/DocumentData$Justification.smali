.class public final enum Lcom/airbnb/lottie/model/DocumentData$Justification;
.super Ljava/lang/Enum;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/DocumentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Justification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/DocumentData$Justification;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public static final enum CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/airbnb/lottie/model/DocumentData$Justification;

    const/4 v1, 0x0

    const-string v2, "LEFT_ALIGN"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/DocumentData$Justification;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/airbnb/lottie/model/DocumentData$Justification;

    const/4 v3, 0x1

    const-string v4, "RIGHT_ALIGN"

    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/model/DocumentData$Justification;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/airbnb/lottie/model/DocumentData$Justification;

    const/4 v5, 0x2

    const-string v6, "CENTER"

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/DocumentData$Justification;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/airbnb/lottie/model/DocumentData$Justification;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/airbnb/lottie/model/DocumentData$Justification;->$VALUES:[Lcom/airbnb/lottie/model/DocumentData$Justification;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/DocumentData$Justification;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/DocumentData$Justification;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/DocumentData$Justification;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/DocumentData$Justification;->$VALUES:[Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/DocumentData$Justification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/DocumentData$Justification;

    return-object v0
.end method
