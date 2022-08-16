.class public final synthetic Lcom/android/systemui/qs/tiles/CellularTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/CellularTile;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string p1, "QsHasTurnedOffMobileData"

    invoke-static {p0, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
