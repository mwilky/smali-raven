.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;
.super Ljava/lang/Object;
.source "BundleUtils.java"


# instance fields
.field private final bundleVersion:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundleVersion"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;->bundleVersion:I

    return-void
.end method

.method public static createWithBackwardsCompatVersion()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;
    .locals 2

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;-><init>(I)V

    return-object v0
.end method

.method public static extractParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bundle",
            "key",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createClassificationsRequest(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;)Landroid/os/Bundle;
    .locals 9
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;
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
            0x0
        }
        names = {
            "packageName",
            "activityName",
            "taskId",
            "captureTimestampMs",
            "assistBundle",
            "interactionContext",
            "contents"
        }
    .end annotation

    move-object v0, p0

    iget v8, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;->bundleVersion:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->create(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;I)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public createFeedbackRequest(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)Landroid/os/Bundle;
    .locals 0
    .param p1    # Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "feedbackBatch"
        }
    .end annotation

    iget p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;->bundleVersion:I

    invoke-static {p1, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/FeedbackBundle;->create(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;I)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/FeedbackBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/FeedbackBundle;->createBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public createScreenshotActionsResponse(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ScreenshotNotificationActions"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public createSelectionsRequest(Ljava/lang/String;Ljava/lang/String;IJLcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ParserParcelables$ParsedViewHierarchy;)Landroid/os/Bundle;
    .locals 9
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
            0x0
        }
        names = {
            "packageName",
            "activityName",
            "taskId",
            "captureTimestampMs",
            "interactionContext",
            "assistBundle",
            "parsedViewHierarchy"
        }
    .end annotation

    move-object v0, p0

    iget v8, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;->bundleVersion:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->create(Ljava/lang/String;Ljava/lang/String;IJLcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ParserParcelables$ParsedViewHierarchy;I)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentSelectionBundle;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public extractContents(Landroid/os/Bundle;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    const-string p0, "Contents"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;->create()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;->create(Landroid/os/Bundle;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public extractEntitiesParcelable(Landroid/os/Bundle;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    const-class p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

    const-string v0, "EntitiesData"

    invoke-static {p1, v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;->extractParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

    return-object p0
.end method

.method public obtainContextImageBundle(ZLjava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isPrimaryTask",
            "packageName",
            "activityName",
            "captureTimestampMs"
        }
    .end annotation

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "CONTEXT_IMAGE_BUNDLE_VERSION_KEY"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CONTEXT_IMAGE_PRIMARY_TASK_KEY"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "CONTEXT_IMAGE_PACKAGE_NAME_KEY"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CONTEXT_IMAGE_ACTIVITY_NAME_KEY"

    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CONTEXT_IMAGE_CAPTURE_TIME_MS_KEY"

    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public obtainScreenshotContextImageBundle(ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isPrimaryTask",
            "screenshotUri",
            "packageName",
            "activityName",
            "captureTimestampMs"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;->obtainContextImageBundle(ZLjava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "CONTEXT_IMAGE_BITMAP_URI_KEY"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method
