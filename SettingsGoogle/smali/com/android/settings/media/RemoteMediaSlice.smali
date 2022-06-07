.class public Lcom/android/settings/media/RemoteMediaSlice;
.super Ljava/lang/Object;
.source "RemoteMediaSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field mRouterManager:Landroid/media/MediaRouter2Manager;

.field private mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createEmptyIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method private getMediaOutputDialogAction(Landroid/media/RoutingSessionInfo;Z)Landroidx/slice/builders/SliceAction;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    const-string p2, "action_launch_dialog"

    :goto_0
    const-string v1, "customized_action"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "RoutingSessionInfo"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->hashCode()I

    move-result v1

    const/high16 v2, 0xc000000

    invoke-static {v0, v1, p2, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f0203a2

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f040cce

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, v3, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getSliderInputAction(ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "media_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const/high16 v0, 0x2000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getSoundSettingAction(Ljava/lang/CharSequence;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;)Landroidx/slice/builders/SliceAction;
    .locals 7

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/notification/SoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const v4, 0x7f0412b7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f040d0e

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p3

    iget-object v1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/high16 v1, 0x4000000

    invoke-static {p0, v0, p3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {p0, p2, v0, p1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iput-object v0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 14

    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    const-string v2, "RemoteMediaSlice"

    if-nez v1, :cond_0

    const-string p0, "Unable to get the slice worker."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mRouterManager:Landroid/media/MediaRouter2Manager;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mRouterManager:Landroid/media/MediaRouter2Manager;

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getActiveRemoteMediaDevice()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "No active remote media device"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const v4, 0x7f041024

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const v5, 0x7f0203a2

    invoke-static {v4, v5}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/media/RemoteMediaSlice;->createEmptyIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v7

    const-string v8, "Unable to add Slice. "

    if-gtz v7, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": max volume is "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->shouldEnableVolumeSeekBar(Landroid/media/RoutingSessionInfo;)Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": This is a group session"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const v10, 0x7f040cce

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v10}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>()V

    invoke-virtual {v10, v4, v12}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v11, v13}, Lcom/android/settings/media/RemoteMediaSlice;->getSliderInputAction(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v3, v4, v11}, Lcom/android/settings/media/RemoteMediaSlice;->getSoundSettingAction(Ljava/lang/CharSequence;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;)Landroidx/slice/builders/SliceAction;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getVolume()I

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;

    invoke-direct {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v7

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->shouldDisableMediaOutput(Ljava/lang/String;)Z

    move-result v7

    new-instance v10, Landroid/text/SpannableString;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v8, ""

    :cond_5
    invoke-direct {v10, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    iget-object v11, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const v13, 0x1010038

    invoke-static {v11, v13}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v8, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/16 v13, 0x21

    invoke-virtual {v10, v8, v12, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    if-eqz v7, :cond_6

    move-object v9, v10

    :cond_6
    invoke-virtual {v8, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v12}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v8

    invoke-direct {p0, v6, v7}, Lcom/android/settings/media/RemoteMediaSlice;->getMediaOutputDialogAction(Landroid/media/RoutingSessionInfo;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f040d06

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->REMOTE_MEDIA_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.app.slice.extra.RANGE_VALUE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "media_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->adjustSessionVolume(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v0, "customized_action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_launch_dialog"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RoutingSessionInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/media/RoutingSessionInfo;

    iget-object v0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.panel.action.CLOSE_PANEL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
