.class public final Lcm/aptoide/pt/v8engine/util/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillPermissionsForTableLayout(Landroid/content/Context;Landroid/widget/TableLayout;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/permissions/ApkPermissionGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v4, 0x0

    .line 67
    .line 70
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v4

    move-object v5, v0

    move v0, v4

    .line 76
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v3, v1, :cond_2

    .line 78
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_0

    .line 79
    invoke-virtual {v5}, Landroid/widget/TableRow;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 81
    const/16 v1, 0x14

    invoke-virtual {v5, v4, v4, v4, v1}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 82
    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v5, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v0

    move-object v2, v5

    .line 76
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v5, v2

    move v0, v1

    goto :goto_0

    .line 87
    :cond_0
    add-int/lit8 v6, v0, 0x1

    .line 89
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/permissions/ApkPermissionGroup;

    .line 91
    if-eqz v0, :cond_3

    .line 92
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$layout;->row_permission:I

    .line 93
    invoke-virtual {v1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 94
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->permission_name:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    invoke-virtual {v0}, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v0}, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->getDescriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v8, Lcm/aptoide/pt/v8engine/R$layout;->row_description:I

    .line 99
    invoke-virtual {v2, v8, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 100
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 104
    :cond_1
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v9, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v1, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    rem-int/lit8 v0, v6, 0x2

    if-nez v0, :cond_3

    .line 108
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, v10, v9}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v5, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 112
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, v10, v9}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v6

    move-object v2, v5

    goto :goto_1

    .line 118
    :cond_2
    return-void

    :cond_3
    move v1, v6

    move-object v2, v5

    goto :goto_1

    :cond_4
    move v1, v0

    move-object v2, v5

    goto :goto_1
.end method

.method public static fillPermissionsGroups(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/permissions/ApkPermission;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcm/aptoide/pt/permissions/ApkPermissionGroup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    const/4 v0, 0x0

    move v3, v0

    move-object v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v3, v0, :cond_3

    .line 44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    .line 45
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move-object v1, v2

    .line 42
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/permissions/ApkPermission;

    .line 52
    invoke-virtual {v0}, Lcm/aptoide/pt/permissions/ApkPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 53
    invoke-virtual {v0}, Lcm/aptoide/pt/permissions/ApkPermission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 54
    new-instance v1, Lcm/aptoide/pt/permissions/ApkPermissionGroup;

    invoke-virtual {v0}, Lcm/aptoide/pt/permissions/ApkPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcm/aptoide/pt/permissions/ApkPermission;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcm/aptoide/pt/permissions/ApkPermissionGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcm/aptoide/pt/permissions/ApkPermission;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->setDescription(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    .line 62
    :cond_3
    return-object v4
.end method

.method public static sumFileSizes(JLcm/aptoide/pt/model/v7/Obb;)J
    .locals 4

    .prologue
    .line 27
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Obb;->getMain()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-wide p0

    .line 29
    :cond_1
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Obb;->getPatch()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v0

    if-nez v0, :cond_2

    .line 30
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Obb;->getMain()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getFilesize()J

    move-result-wide v0

    add-long/2addr p0, v0

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Obb;->getMain()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getFilesize()J

    move-result-wide v0

    add-long/2addr v0, p0

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Obb;->getPatch()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getFilesize()J

    move-result-wide v2

    add-long p0, v0, v2

    goto :goto_0
.end method
