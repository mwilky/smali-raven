.class final Lcom/android/server/autofill/ui/FillUi;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;,
        Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;,
        Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;,
        Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;,
        Lcom/android/server/autofill/ui/FillUi$ViewItem;,
        Lcom/android/server/autofill/ui/FillUi$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FillUi"

.field private static final THEME_ID_DARK:I = 0x10303df

.field private static final THEME_ID_LIGHT:I = 0x10303e9

.field private static final sTempTypedValue:Landroid/util/TypedValue;


# instance fields
.field private final mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

.field private mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

.field private final mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFilterText:Ljava/lang/String;

.field private final mFooter:Landroid/view/View;

.field private final mFullScreen:Z

.field private final mHeader:Landroid/view/View;

.field private final mListView:Landroid/widget/ListView;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mThemeId:I

.field private final mVisibleDatasetsMaxCount:I

.field private final mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

.field private final mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLcom/android/server/autofill/ui/FillUi$Callback;)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v6, "FillUi"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nightMode: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v4, :cond_1

    const v0, 0x10303df

    goto :goto_0

    :cond_1
    const v0, 0x10303e9

    :goto_0
    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    move-object/from16 v7, p9

    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-static/range {p1 .. p1}, Lcom/android/server/autofill/ui/FillUi;->isFullScreen(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    new-instance v9, Landroid/view/ContextThemeWrapper;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getHeader()Landroid/widget/RemoteViews;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFooter()Landroid/widget/RemoteViews;

    move-result-object v13

    if-eqz v8, :cond_2

    const v14, 0x1090040

    invoke-virtual {v11, v14, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    if-nez v12, :cond_4

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    const v14, 0x109003f

    invoke-virtual {v11, v14, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_4
    :goto_1
    const v14, 0x1090041

    invoke-virtual {v11, v14, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    :goto_2
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    const v5, 0x10201ef

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v15, 0x0

    if-eqz v5, :cond_5

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p6, v7, v15

    const v4, 0x1040196

    invoke-virtual {v9, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const v4, 0x10201ec

    invoke-virtual {v14, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    move-object/from16 v7, p7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_6
    move-object/from16 v7, p7

    :goto_3
    if-eqz v8, :cond_8

    iget-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v17, v4

    invoke-virtual {v9}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v4, -0x1

    iput v4, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v4, v15, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    const-string v5, "initialized fillscreen LayoutParams "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    move-object/from16 v18, v5

    goto :goto_4

    :cond_8
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    :goto_4
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v14, v4}, Landroid/view/ViewGroup;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v4

    if-lez v4, :cond_9

    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v4

    iput v4, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "overriding maximum visible datasets to "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    :cond_a
    :goto_5
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v5

    const-string v15, "Error inflating remote views"

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const v5, 0x10201ee

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-virtual {v7, v9, v14, v4, v0}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setFocusable(Z)V

    new-instance v6, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda1;

    move-object/from16 v7, p2

    invoke-direct {v6, v1, v7}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v8, :cond_c

    iget-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    invoke-static {v9, v6}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const/4 v15, -0x2

    if-eqz v8, :cond_b

    iget v8, v6, Landroid/graphics/Point;->x:I

    goto :goto_6

    :cond_b
    move v8, v15

    :goto_6
    iput v8, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v15, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, v6, Landroid/graphics/Point;->x:I

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v15, v6, Landroid/graphics/Point;->y:I

    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v14, v8, v9}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    iput v15, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    iput v15, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    :cond_c
    new-instance v6, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v6, v1, v14, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    move-object/from16 v28, v4

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move-object/from16 v7, p2

    invoke-interface/range {p9 .. p9}, Lcom/android/server/autofill/ui/FillUi$Callback;->onCanceled()V

    invoke-static {v6, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-void

    :cond_d
    move-object/from16 v7, p2

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number datasets: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " max visible: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v7, 0x0

    if-eqz v12, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v12, v9, v8, v7, v0}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    const v8, 0x10201eb

    invoke-virtual {v14, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    move-object/from16 v16, v7

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v7

    invoke-direct {v1, v10, v7}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_f

    const-string v7, "adding header"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v7, v16

    goto :goto_7

    :cond_10
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    :goto_7
    if-eqz v13, :cond_14

    const v8, 0x10201ea

    invoke-virtual {v14, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_13

    if-nez v7, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v7

    :cond_11
    const/4 v10, 0x0

    invoke-virtual {v13, v9, v10, v7, v0}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v9

    invoke-direct {v1, v0, v9}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_12

    const-string v9, "adding footer"

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v9, 0x0

    goto :goto_8

    :cond_13
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    :goto_8
    goto :goto_9

    :cond_14
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v0

    const/4 v0, 0x0

    move v9, v0

    :goto_a
    if-ge v9, v5, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/service/autofill/Dataset;

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    move/from16 v16, v5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1b

    move-object/from16 v25, v7

    invoke-virtual {v10, v5}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v7

    if-nez v7, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v11

    const-string/jumbo v11, "not displaying UI on field "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v28, v4

    move-object/from16 v27, v12

    goto/16 :goto_f

    :cond_15
    move-object/from16 v26, v11

    :try_start_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_16

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setting remote view for "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    move-object/from16 v27, v12

    goto/16 :goto_e

    :cond_16
    :goto_b
    :try_start_3
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    iget v11, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v27, v12

    const/4 v12, 0x0

    :try_start_4
    invoke-virtual {v7, v0, v12, v4, v11}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    nop

    invoke-virtual {v10, v5}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-nez v11, :cond_18

    move-object/from16 v28, v4

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    :cond_17
    move-object/from16 v29, v7

    move-object/from16 v4, v19

    move/from16 v7, v20

    goto :goto_d

    :cond_18
    move-object/from16 v28, v4

    iget-object v12, v11, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    if-nez v12, :cond_1a

    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v7

    const-string v7, "Explicitly disabling filter at id "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for dataset #"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_19
    move-object/from16 v29, v7

    :goto_c
    const/16 v20, 0x0

    move-object/from16 v4, v19

    move/from16 v7, v20

    goto :goto_d

    :cond_1a
    move-object/from16 v29, v7

    move-object/from16 v4, v19

    move/from16 v7, v20

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    new-instance v2, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move-object/from16 v21, v12

    move/from16 v22, v7

    move-object/from16 v23, v4

    move-object/from16 v24, v0

    invoke-direct/range {v19 .. v24}, Lcom/android/server/autofill/ui/FillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :catch_2
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    goto :goto_e

    :catch_3
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    move-object/from16 v27, v12

    :goto_e
    invoke-static {v6, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :cond_1b
    move-object/from16 v28, v4

    move-object/from16 v25, v7

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    :goto_f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p3

    move/from16 v5, v16

    move-object/from16 v7, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v4, v28

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v28, v4

    move/from16 v16, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-direct {v0, v1, v8}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const v2, 0x10201ed

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-nez p4, :cond_1d

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    goto :goto_10

    :cond_1d
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v14, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    :goto_11
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method private announceSearchResultIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->post()V

    :cond_1
    return-void
.end method

.method private applyCancelAction(Landroid/view/View;[I)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v1, "FillUi"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill UI has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " actions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply actions because fill UI root is not a ViewGroup: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_4

    aget v3, p2, v2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring cancel action for view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " because it\'s not on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private applyNewFilterText()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    new-instance v3, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/FillUi;I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void
.end method

.method public static isFullScreen(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forcing full-screen mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$newInteractionBlocker$5(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring click on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;
    .locals 1

    sget-object v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;

    return-object v0
.end method

.method private static resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120014

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120013

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateContentSize()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    const/4 v2, 0x1

    :cond_2
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v4}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v2, v5

    :cond_5
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v6, v5}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v6, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-direct {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v2, v7

    iget v7, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-ge v5, v7, :cond_6

    invoke-direct {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v2, v7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v5, :cond_8

    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v2, v5

    :cond_8
    return v2
.end method

.method private updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    add-int v3, v2, v1

    if-eq v3, v2, :cond_0

    iput v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eq v2, v3, :cond_0

    iput v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public destroy(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFullScreen: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleDatasetsMaxCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHeader: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mListView: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFooter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdapter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFilterText: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentWidth: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentHeight: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDestroyed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "(UNKNOWN_MODE)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_0
    const-string v0, " (light)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    const-string v0, " (dark)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_8

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindow: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "showing: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$300(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "view: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$500(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "params: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$500(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "screen coordinates: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v1, "N/A"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v3

    aget v2, v3, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v1, v3, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_8
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10303df -> :sswitch_1
        0x10303e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic lambda$applyCancelAction$4$FillUi(Landroid/view/View;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Cancelling session after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->cancelSession()V

    return-void
.end method

.method public synthetic lambda$applyNewFilterText$6$FillUi(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gtz p2, :cond_3

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No dataset matches filter with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FillUi"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->updateContentSize()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    :cond_4
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-le v1, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    if-eq v0, p1, :cond_6

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic lambda$new$0$FillUi(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p2}, Lcom/android/server/autofill/ui/FillUi$Callback;->dispatchUnhandledKey(Landroid/view/KeyEvent;)V

    const/4 v0, 0x1

    return v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic lambda$new$1$FillUi(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/FillUi$Callback;->startIntentSender(Landroid/content/IntentSender;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$new$2$FillUi(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method public synthetic lambda$new$3$FillUi(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-interface {v1, v2}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    return-void
.end method

.method requestShowFillUi()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    return-void
.end method
