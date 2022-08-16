.class public Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;
.super Ljava/lang/Object;
.source "ConnectedDockUpdater.java"

# interfaces
.implements Lcom/android/settings/connecteddevice/dock/DockUpdater;
.implements Lcom/google/android/settings/connecteddevice/dock/DockAsyncQueryHandler$OnQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater$ConnectedDockObserver;
    }
.end annotation


# instance fields
.field private final mAsyncQueryHandler:Lcom/google/android/settings/connecteddevice/dock/DockAsyncQueryHandler;

.field private final mConnectedDockObserver:Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater$ConnectedDockObserver;

.field private final mContext:Landroid/content/Context;

.field private final mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

.field private mDockId:Ljava/lang/String;

.field private mDockName:Ljava/lang/String;

.field mDockPreference:Lcom/android/settings/widget/GearPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mDockProviderUri:Landroid/net/Uri;

.field mIsObserverRegistered:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPreferenceContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    iput-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mPreferenceContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockName:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    sget-object p2, Lcom/google/android/settings/connecteddevice/dock/DockContract;->DOCK_PROVIDER_CONNECTED_URI:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockProviderUri:Landroid/net/Uri;

    new-instance p2, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater$ConnectedDockObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater$ConnectedDockObserver;-><init>(Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mConnectedDockObserver:Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater$ConnectedDockObserver;

    new-instance p2, Lcom/google/android/settings/connecteddevice/dock/DockAsyncQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/settings/connecteddevice/dock/DockAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object p2, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mAsyncQueryHandler:Lcom/google/android/settings/connecteddevice/dock/DockAsyncQueryHandler;

    invoke-virtual {p2, p0}, Lcom/google/android/settings/connecteddevice/dock/DockAsyncQueryHandler;->setOnQueryListener(Lcom/google/android/settings/connecteddevice/dock/DockAsyncQueryHandler$OnQueryListener;)V

    return-void
.end method

.method private updatePreference()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->initPreference()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object p0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    invoke-interface {v0, p0}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceRemoved(Landroidx/preference/Preference;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    iget-object v1, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mPreferenceContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/settings/connecteddevice/dock/DockUtils;->buildRainbowIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    iget-object v1, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    iget-object v2, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/settings/connecteddevice/dock/DockContract;->buildDockSettingIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object p0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    invoke-interface {v0, p0}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceAdded(Landroidx/preference/Preference;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public forceUpdate()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mAsyncQueryHandler:Lcom/google/android/settings/connecteddevice/dock/DockAsyncQueryHandler;

    iget-object v2, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockProviderUri:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/settings/connecteddevice/dock/DockContract;->DOCK_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method initPreference()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mPreferenceContext:Landroid/content/Context;

    const-string v1, "Preference context cannot be null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/widget/GearPreference;

    iget-object v1, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mPreferenceContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    iget-object v1, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mContext:Landroid/content/Context;

    const v2, 0x7f04088a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object p0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/settings/connecteddevice/dock/DockDevice;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/settings/connecteddevice/dock/DockDevice;

    invoke-virtual {p1}, Lcom/google/android/settings/connecteddevice/dock/DockDevice;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/settings/connecteddevice/dock/DockDevice;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->updatePreference()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/preference/Preference;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object p0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockPreference:Lcom/android/settings/widget/GearPreference;

    invoke-interface {p1, p0}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceRemoved(Landroidx/preference/Preference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerCallback()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockProviderUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mDockProviderUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mConnectedDockObserver:Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater$ConnectedDockObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mIsObserverRegistered:Z

    invoke-virtual {p0}, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->forceUpdate()V

    :cond_0
    return-void
.end method

.method public setPreferenceContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mPreferenceContext:Landroid/content/Context;

    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mIsObserverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mConnectedDockObserver:Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater$ConnectedDockObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/settings/connecteddevice/dock/ConnectedDockUpdater;->mIsObserverRegistered:Z

    :cond_0
    return-void
.end method
