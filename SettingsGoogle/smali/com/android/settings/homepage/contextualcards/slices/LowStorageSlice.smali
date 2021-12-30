.class public Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;
.super Ljava/lang/Object;
.source "LowStorageSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildRowBuilder(Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/core/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {v0, v1, p0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {p0, p3, v1, p1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {v0, p3, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f0412dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0x579

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->LOW_STORAGE_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 10

    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v0

    iget-wide v1, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v3, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long v3, v1, v3

    long-to-double v3, v3

    long-to-double v1, v1

    div-double/2addr v3, v1

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    iget-wide v5, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    invoke-static {v2, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroidx/slice/builders/ListBuilder;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/settings/slices/CustomSliceRegistry;->LOW_STORAGE_SLICE_URI:Landroid/net/Uri;

    const-wide/16 v7, -0x1

    invoke-direct {v2, v5, v6, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    const v6, 0x7f02036c

    invoke-static {v5, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    const-wide v6, 0x3feb333333333333L    # 0.85

    cmpg-double v3, v3, v6

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    const v8, 0x7f0412f7

    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    const v9, 0x7f0412fd

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v4

    aput-object v0, v6, v7

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v5}, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->buildRowBuilder(Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/core/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroidx/slice/builders/ListBuilder;->setIsError(Z)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    const v8, 0x7f0412e7

    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->mContext:Landroid/content/Context;

    const v9, 0x7f040c58

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v4

    aput-object v0, v6, v7

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v5}, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->buildRowBuilder(Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/core/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->LOW_STORAGE_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
