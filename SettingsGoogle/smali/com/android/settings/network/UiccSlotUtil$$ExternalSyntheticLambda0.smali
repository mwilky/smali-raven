.class public final synthetic Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda0;->f$0:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda0;->f$0:Ljava/util/Collection;

    check-cast p1, Landroid/telephony/UiccSlotMapping;

    invoke-static {p0, p1}, Lcom/android/settings/network/UiccSlotUtil;->$r8$lambda$NYClufbhBrLdRANm5a5IT2G4BGI(Ljava/util/Collection;Landroid/telephony/UiccSlotMapping;)Z

    move-result p0

    return p0
.end method
