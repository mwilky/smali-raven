.class public Lcom/android/settings/homepage/contextualcards/ContextualCard;
.super Ljava/lang/Object;
.source "ContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    }
.end annotation


# instance fields
.field private final mAppVersion:J

.field private final mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

.field private final mCardType:I

.field private final mCategory:I

.field private final mHasInlineAction:Z

.field private final mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mIsLargeCard:Z

.field private final mIsPendingDismiss:Z

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mRankingScore:D

.field private final mSlice:Landroidx/slice/Slice;

.field private final mSliceUri:Ljava/lang/String;

.field private final mSummaryText:Ljava/lang/String;

.field private final mTitleText:Ljava/lang/String;

.field private final mViewType:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setCardType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v2, "score"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setRankingScore(D)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v2, "slice_uri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSliceUri(Landroid/net/Uri;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v2, "category"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    invoke-virtual {v0, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setCategory(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v2, "package_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v2, "app_version"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mAppVersion:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setAppVersion(J)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    invoke-virtual {v0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIsLargeCard(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-direct {p0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getViewTypeByCardType(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    invoke-virtual {v0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIsPendingDismiss(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    invoke-virtual {v0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setHasInlineAction(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iput-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSlice:Landroidx/slice/Slice;

    invoke-virtual {v0, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSlice(Landroidx/slice/Slice;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$000(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$100(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$200(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$300(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$400(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$500(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$600(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mAppVersion:J

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$700(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$800(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$900(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1000(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1100(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1200(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1300(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1400(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Landroidx/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSlice:Landroidx/slice/Slice;

    return-void
.end method

.method private getViewTypeByCardType(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const p0, 0x7f060098

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public getCardType()I
    .locals 0

    iget p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    return p0
.end method

.method public getCategory()I
    .locals 0

    iget p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    return p0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getRankingScore()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    return-wide v0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSlice:Landroidx/slice/Slice;

    return-object p0
.end method

.method public getSliceUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getSummaryText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    return-object p0
.end method

.method public getTextSliceUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    iget p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    return p0
.end method

.method public hasInlineAction()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isLargeCard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    return p0
.end method

.method public isPendingDismiss()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    return p0
.end method

.method public mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    return-object p0
.end method
