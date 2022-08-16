.class public Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TareFactorExpandableListAdapter.java"


# instance fields
.field private final mChildren:[[Ljava/lang/String;

.field private final mFactorController:Lcom/android/settings/development/tare/TareFactorController;

.field private final mGroups:[Ljava/lang/String;

.field private final mKeys:[[Ljava/lang/String;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/settings/development/tare/TareFactorController;Landroid/view/LayoutInflater;[Ljava/lang/String;[[Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mFactorController:Lcom/android/settings/development/tare/TareFactorController;

    iput-object p3, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mGroups:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mChildren:[[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mKeys:[[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->validateMappings()V

    return-void
.end method

.method private static cakeToString(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-wide/32 v2, 0x3b9aca00

    rem-long v4, p0, v2

    div-long/2addr p0, v2

    long-to-int p0, p0

    int-to-long p0, p0

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " c"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long p0, v4, v0

    if-lez p0, :cond_2

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-wide/32 v0, 0xf4240

    div-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, p1

    const-string p1, "%03d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, " A"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private validateMappings()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mGroups:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mChildren:[[Ljava/lang/String;

    array-length v2, v1

    if-ne v0, v2, :cond_3

    array-length v0, v1

    iget-object v1, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mKeys:[[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mChildren:[[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    array-length v1, v1

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mKeys:[[Ljava/lang/String;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "children and keys don\'t have the same length in row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "children and keys don\'t have the same length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "groups and children don\'t have the same length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mChildren:[[Ljava/lang/String;

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    return-object p0
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    if-nez p4, :cond_0

    iget-object p3, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p4, 0x7f060284

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    :cond_0
    const p3, 0x7f0d0240

    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const p5, 0x7f0d0242

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mFactorController:Lcom/android/settings/development/tare/TareFactorController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->getKey(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/settings/development/tare/TareFactorController;->getValue(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->cakeToString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mChildren:[[Ljava/lang/String;

    aget-object p0, p0, p1

    array-length p0, p0

    return p0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mGroups:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mGroups:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public getGroupId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p3, 0x1090003

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    :cond_0
    const p2, 0x1020014

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method getKey(II)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;->mKeys:[[Ljava/lang/String;

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    return-object p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
