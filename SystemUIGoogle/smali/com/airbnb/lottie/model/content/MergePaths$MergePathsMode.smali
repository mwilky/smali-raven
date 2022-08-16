.class public final enum Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
.super Ljava/lang/Enum;
.source "MergePaths.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/MergePaths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MergePathsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum ADD:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum EXCLUDE_INTERSECTIONS:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum INTERSECT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum SUBTRACT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const/4 v1, 0x0

    const-string v2, "MERGE"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const/4 v3, 0x1

    const-string v4, "ADD"

    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ADD:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v4, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const/4 v5, 0x2

    const-string v6, "SUBTRACT"

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->SUBTRACT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v6, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const/4 v7, 0x3

    const-string v8, "INTERSECT"

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->INTERSECT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v8, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const/4 v9, 0x4

    const-string v10, "EXCLUDE_INTERSECTIONS"

    invoke-direct {v8, v9, v10}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->EXCLUDE_INTERSECTIONS:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->$VALUES:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->$VALUES:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object v0
.end method
