.class public Lcom/android/settings/development/HardwareOverlaysPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "HardwareOverlaysPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final SURFACE_FLINGER_READ_CODE:I = 0x3f2


# instance fields
.field private final mSurfaceFlinger:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string p1, "SurfaceFlinger"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "disable_overlays"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->writeHardwareOverlaysSetting(Z)V

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->writeHardwareOverlaysSetting(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method updateHardwareOverlaysSetting()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->updateHardwareOverlaysSetting()V

    return-void
.end method

.method writeHardwareOverlaysSetting(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p1, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v2, 0x3f0

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->updateHardwareOverlaysSetting()V

    return-void
.end method