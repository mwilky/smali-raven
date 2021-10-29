.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;
.super Ljava/lang/Object;
.source "ContentSelectionBundle.java"


# instance fields
.field public final activityName:Ljava/lang/String;

.field public final assistBundle:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final bundleVersion:I

.field public final captureTimestampMs:J

.field public final interactionContext:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;

.field public final parsedViewHierarchy:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ParserParcelables$ParsedViewHierarchy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final taskId:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ParserParcelables$ParsedViewHierarchy;I)V
    .locals 0
    .param p6    # Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ParserParcelables$ParsedViewHierarchy;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "activityName",
            "taskId",
            "captureTimestampMs",
            "interactionContext",
            "assistBundle",
            "parsedViewHierarchy",
            "bundleVersion"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->activityName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->taskId:I

    iput-wide p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->captureTimestampMs:J

    iput-object p6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->interactionContext:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;

    iput-object p7, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->assistBundle:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->parsedViewHierarchy:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ParserParcelables$ParsedViewHierarchy;

    iput p9, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->bundleVersion:I

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IJLcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ParserParcelables$ParsedViewHierarchy;I)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;
    .locals 11
    .param p5    # Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ParserParcelables$ParsedViewHierarchy;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "activityName",
            "taskId",
            "captureTimestampMs",
            "interactionContext",
            "assistBundle",
            "parsedViewHierarchy",
            "bundleVersion"
        }
    .end annotation

    new-instance v10, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;-><init>(Ljava/lang/String;Ljava/lang/String;IJLcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ParserParcelables$ParsedViewHierarchy;I)V

    return-object v10
.end method


# virtual methods
.method public createBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->packageName:Ljava/lang/String;

    const-string v2, "PackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->activityName:Ljava/lang/String;

    const-string v2, "ActivityName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->taskId:I

    const-string v2, "TaskId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->captureTimestampMs:J

    const-string v3, "CaptureTimestampMs"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->interactionContext:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;

    const/4 v2, 0x0

    const-string v3, "InteractionContext"

    if-nez v1, :cond_0

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;->writeToBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->assistBundle:Landroid/os/Bundle;

    const-string v3, "AssistBundle"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->parsedViewHierarchy:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ParserParcelables$ParsedViewHierarchy;

    const-string v3, "ParsedViewHierarchy"

    if-nez v1, :cond_1

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ParserParcelables$ParsedViewHierarchy;->writeToBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    iget p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->bundleVersion:I

    const-string v1, "Version"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x3

    const-string v1, "BundleTypedVersion"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
