.class public final synthetic Lcom/android/systemui/statusbar/notification/InstantAppNotifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    check-cast p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->$r8$lambda$iP_gNIzEHCLZ79MuSYpCthyBWFE(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    return-void
.end method
