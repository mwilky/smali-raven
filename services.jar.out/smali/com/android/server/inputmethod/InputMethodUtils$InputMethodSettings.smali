.class public Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodSettings"
.end annotation


# static fields
.field private static final CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# instance fields
.field private mCopyOnWrite:Z

.field private final mCopyOnWriteDataStore:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I

.field private mCurrentUserId:I

.field private mEnabledInputMethodsStrCache:Ljava/lang/String;

.field private final mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mMethodMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRes:Landroid/content/res/Resources;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->sUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/ContentResolver;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p4, p5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    return-void
.end method

.method private addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/text/TextUtils$SimpleStringSplitter;",
            "Landroid/text/TextUtils$SimpleStringSplitter;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private createEnabledInputMethodListLocked(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    invoke-static {v3, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v4

    :cond_3
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->access$300()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->access$300()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_4
    goto :goto_2

    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->access$300()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_6
    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    nop

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    nop

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private getSelectedInputMethodSubtypeHashCode()I
    .locals 2

    const-string/jumbo v0, "selected_input_method_subtype"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    return-object v1
.end method

.method private getSubtypeHistoryStr()Ljava/lang/String;
    .locals 2

    const-string v0, "input_methods_subtype_history"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSubtypeHistoryStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->access$300()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private putInt(Ljava/lang/String;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->sUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_1
    return-void
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->sUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_1
    return-void
.end method

.method private putSubtypeHistoryStr(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "input_methods_subtype_history"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x3b

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->access$300()Ljava/lang/String;

    move-result-object v6

    :cond_1
    if-eqz v1, :cond_2

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSubtypeHistoryStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-static {p1, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V

    :goto_2
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCurrentProfileIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCopyOnWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mEnabledInputMethodsStrCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    return v0
.end method

.method getDefaultVoiceInputMethod()Ljava/lang/String;
    .locals 2

    const-string v0, "default_voice_input_method"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getEnabledInputMethodListLocked()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListWithFilterLocked(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getEnabledInputMethodListWithFilterLocked(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    nop

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->createEnabledInputMethodListLocked(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    nop

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Landroid/view/inputmethod/InputMethodSubtype;->sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    nop

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    goto :goto_3

    :cond_3
    goto :goto_0

    :cond_4
    :goto_3
    return-object v1
.end method

.method getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getEnabledInputMethodsStr()Ljava/lang/String;
    .locals 2

    const-string v0, "enabled_input_methods"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    return-object v0
.end method

.method getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getSelectedInputMethod()Ljava/lang/String;
    .locals 2

    const-string v0, "default_input_method"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSelectedInputMethodSubtypeId(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v2

    return v2
.end method

.method public isCurrentProfile(I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget v2, v2, v0

    if-ne p1, v2, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isShowImeWithHardKeyboardEnabled()Z
    .locals 2

    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isSubtypeSelected()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method putDefaultVoiceInputMethod(Ljava/lang/String;)V
    .locals 1

    const-string v0, "default_voice_input_method"

    invoke-direct {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method putEnabledInputMethodsStr(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "enabled_input_methods"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    return-void
.end method

.method putSelectedInputMethod(Ljava/lang/String;)V
    .locals 1

    const-string v0, "default_input_method"

    invoke-direct {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method putSelectedSubtype(I)V
    .locals 1

    const-string/jumbo v0, "selected_input_method_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->access$300()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setShowImeWithHardKeyboard(Z)V
    .locals 1

    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    invoke-direct {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method switchCurrentUser(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    :cond_1
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    return-void
.end method
