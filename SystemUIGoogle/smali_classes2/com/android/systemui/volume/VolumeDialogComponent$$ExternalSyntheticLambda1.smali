.class public final synthetic Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->createDefault()Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object p0

    return-object p0
.end method
