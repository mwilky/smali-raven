.class public final synthetic Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->$r8$lambda$DhC-FnvJHp8hbrOhpVfGrEnzAJI(Ljava/util/Set;Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z

    move-result p0

    return p0
.end method
