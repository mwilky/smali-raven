.class public final synthetic Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/slice/widget/SliceView$OnSliceActionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

.field public final synthetic f$1:Landroidx/lifecycle/LiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;Landroidx/lifecycle/LiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    iput-object p2, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/lifecycle/LiveData;

    invoke-static {v0, p0, p1, p2}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->$r8$lambda$24t6BW0UJf2SL06vnRA_GBl4ldc(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;Landroidx/lifecycle/LiveData;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    return-void
.end method
