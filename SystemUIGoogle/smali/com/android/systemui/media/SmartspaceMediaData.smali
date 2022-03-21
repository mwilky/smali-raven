.class public final Lcom/android/systemui/media/SmartspaceMediaData;
.super Ljava/lang/Object;
.source "SmartspaceMediaData.kt"


# instance fields
.field private final backgroundColor:I

.field private final cardAction:Landroid/app/smartspace/SmartspaceAction;

.field private final dismissIntent:Landroid/content/Intent;

.field private final headphoneConnectionTimeMillis:J

.field private final isActive:Z

.field private final isValid:Z

.field private final packageName:Ljava/lang/String;

.field private final recommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private final targetId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroid/app/smartspace/SmartspaceAction;",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;",
            "Landroid/content/Intent;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "targetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recommendations"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/systemui/media/SmartspaceMediaData;->isActive:Z

    iput-boolean p3, p0, Lcom/android/systemui/media/SmartspaceMediaData;->isValid:Z

    iput-object p4, p0, Lcom/android/systemui/media/SmartspaceMediaData;->packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/media/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    iput-object p6, p0, Lcom/android/systemui/media/SmartspaceMediaData;->recommendations:Ljava/util/List;

    iput-object p7, p0, Lcom/android/systemui/media/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    iput p8, p0, Lcom/android/systemui/media/SmartspaceMediaData;->backgroundColor:I

    iput-wide p9, p0, Lcom/android/systemui/media/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/media/SmartspaceMediaData;Ljava/lang/String;ZZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;IJILjava/lang/Object;)Lcom/android/systemui/media/SmartspaceMediaData;
    .locals 12

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/android/systemui/media/SmartspaceMediaData;->isActive:Z

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/systemui/media/SmartspaceMediaData;->isValid:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/systemui/media/SmartspaceMediaData;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/android/systemui/media/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/android/systemui/media/SmartspaceMediaData;->recommendations:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/android/systemui/media/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/android/systemui/media/SmartspaceMediaData;->backgroundColor:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-wide v10, v0, Lcom/android/systemui/media/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    goto :goto_8

    :cond_8
    move-wide/from16 v10, p9

    :goto_8
    move-object p1, v2

    move p2, v3

    move p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-wide/from16 p9, v10

    invoke-virtual/range {p0 .. p10}, Lcom/android/systemui/media/SmartspaceMediaData;->copy(Ljava/lang/String;ZZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;IJ)Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;ZZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;IJ)Lcom/android/systemui/media/SmartspaceMediaData;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroid/app/smartspace/SmartspaceAction;",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;",
            "Landroid/content/Intent;",
            "IJ)",
            "Lcom/android/systemui/media/SmartspaceMediaData;"
        }
    .end annotation

    const-string v0, "targetId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recommendations"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/media/SmartspaceMediaData;

    move-object v1, v0

    move v3, p2

    move v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/media/SmartspaceMediaData;-><init>(Ljava/lang/String;ZZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/SmartspaceMediaData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/SmartspaceMediaData;

    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->isActive:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/SmartspaceMediaData;->isActive:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->isValid:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/SmartspaceMediaData;->isValid:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/SmartspaceMediaData;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    iget-object v3, p1, Lcom/android/systemui/media/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->recommendations:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/media/SmartspaceMediaData;->recommendations:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/android/systemui/media/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->backgroundColor:I

    iget v3, p1, Lcom/android/systemui/media/SmartspaceMediaData;->backgroundColor:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/android/systemui/media/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    iget-wide p0, p1, Lcom/android/systemui/media/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/SmartspaceMediaData;->backgroundColor:I

    return p0
.end method

.method public final getCardAction()Landroid/app/smartspace/SmartspaceAction;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    return-object p0
.end method

.method public final getDismissIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getHeadphoneConnectionTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/media/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    return-wide v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SmartspaceMediaData;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecommendations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/SmartspaceMediaData;->recommendations:Ljava/util/List;

    return-object p0
.end method

.method public final getTargetId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->isActive:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->isValid:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceAction;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->recommendations:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/content/Intent;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->backgroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/SmartspaceMediaData;->isActive:Z

    return p0
.end method

.method public final isValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/SmartspaceMediaData;->isValid:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartspaceMediaData(targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cardAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recommendations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->recommendations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dismissIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->backgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headphoneConnectionTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/media/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
