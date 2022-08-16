.class public Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;
.super Lcom/android/systemui/keyguard/KeyguardSliceProvider;
.source "KeyguardSliceProviderGoogle.java"

# interfaces
.implements Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle$AddShadowTask;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCalendarUri:Landroid/net/Uri;

.field public mHideSensitiveContent:Z

.field public mHideWorkContent:Z

.field public mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

.field public mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

.field public final mWeatherUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "KeyguardSliceProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideWorkContent:Z

    const-string v0, "content://com.android.systemui.keyguard/smartSpace/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mWeatherUri:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.keyguard/smartSpace/calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mCalendarUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final addWeather(Landroidx/slice/builders/ListBuilder;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isExpired()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mWeatherUri:Landroid/net/Uri;

    invoke-direct {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, v0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)V

    :cond_0
    invoke-virtual {p1, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    :cond_1
    return-void
.end method

.method public final onBindSlice()Landroidx/slice/Slice;
    .locals 8

    const-string v0, "KeyguardSliceProviderGoogle#onBindSlice"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isExpired()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-boolean v5, v4, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->isSensitive:Z

    if-eqz v5, :cond_0

    iget-boolean v6, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideSensitiveContent:Z

    if-nez v6, :cond_0

    iget-boolean v6, v4, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->isWorkProfile:Z

    if-nez v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    if-eqz v5, :cond_1

    iget-boolean v7, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideWorkContent:Z

    if-nez v7, :cond_1

    iget-boolean v4, v4, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->isWorkProfile:Z

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v5, :cond_2

    if-nez v6, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v4, :cond_b

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_3

    :cond_4
    invoke-static {v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    :goto_3
    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    if-eqz v4, :cond_6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(Z)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroidx/slice/builders/SliceAction;

    invoke-direct {v7, v6, v4, v2, v5}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/String;)V

    move-object v5, v7

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_6
    :goto_4
    new-instance v6, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHeaderUri:Landroid/net/Uri;

    invoke-direct {v6, v7}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getFormattedTitle()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v3, v6, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitleLoading:Z

    if-eqz v5, :cond_7

    iput-object v5, v6, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    :cond_7
    iget-object v7, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v7, v6}, Landroidx/slice/builders/impl/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V

    invoke-virtual {v1, v3}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v6, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v7, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mCalendarUri:Landroid/net/Uri;

    invoke-direct {v6, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    iput-object v1, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v3, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    if-eqz v4, :cond_8

    invoke-virtual {v6, v4, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)V

    :cond_8
    if-eqz v5, :cond_9

    iput-object v5, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    :cond_9
    invoke-virtual {v0, v6}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addZenModeLocked(Landroidx/slice/builders/ListBuilder;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addPrimaryActionLocked(Landroidx/slice/builders/ListBuilder;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    check-cast v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-virtual {v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->needsMediaLocked()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addMediaLocked(Landroidx/slice/builders/ListBuilder;)V

    goto :goto_5

    :cond_c
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateUri:Landroid/net/Uri;

    invoke-direct {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getFormattedDateLocked()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v3, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->addWeather(Landroidx/slice/builders/ListBuilder;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addNextAlarmLocked(Landroidx/slice/builders/ListBuilder;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addZenModeLocked(Landroidx/slice/builders/ListBuilder;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addPrimaryActionLocked(Landroidx/slice/builders/ListBuilder;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    check-cast p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object p0

    sget-boolean v0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "KeyguardSliceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding slice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onCreateSliceProvider()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->onCreateSliceProvider()V

    new-instance v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    iget-boolean v0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHideWorkData:Z

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->onSensitiveModeChanged(ZZ)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onSensitiveModeChanged(ZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideSensitiveContent:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideSensitiveContent:Z

    sget-boolean v0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSliceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Public mode changed, hide data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideWorkContent:Z

    if-eq v0, p2, :cond_2

    iput-boolean p2, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideWorkContent:Z

    sget-boolean p1, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "KeyguardSliceProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Public work mode changed, hide data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v1, p1

    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIconProcessed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIconProcessed:Z

    new-instance v1, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle$AddShadowTask;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle$AddShadowTask;-><init>(Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V

    new-array p0, v0, [Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    aput-object p1, p0, v0

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final updateClockLocked()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    return-void
.end method
