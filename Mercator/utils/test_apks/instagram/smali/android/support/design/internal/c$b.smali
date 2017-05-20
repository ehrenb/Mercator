.class Landroid/support/design/internal/c$b;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/design/internal/c$j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/c;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/c$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v7/view/menu/j;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/design/internal/c;)V
    .locals 1

    .prologue
    .line 356
    iput-object p1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    .line 357
    invoke-direct {p0}, Landroid/support/design/internal/c$b;->c()V

    .line 358
    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 529
    :goto_0
    if-ge p1, p2, :cond_0

    .line 530
    iget-object v0, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/c$f;

    .line 531
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/design/internal/c$f;->a:Z

    .line 529
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 533
    :cond_0
    return-void
.end method

.method private c()V
    .locals 14

    .prologue
    .line 459
    iget-boolean v0, p0, Landroid/support/design/internal/c$b;->d:Z

    if-eqz v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 462
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/c$b;->d:Z

    .line 463
    iget-object v0, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 464
    iget-object v0, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/design/internal/c$c;

    invoke-direct {v1}, Landroid/support/design/internal/c$c;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const/4 v5, -0x1

    .line 467
    const/4 v4, 0x0

    .line 468
    const/4 v3, 0x0

    .line 469
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-object v1, v1, Landroid/support/design/internal/c;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v0

    :goto_1
    if-ge v7, v8, :cond_e

    .line 470
    iget-object v0, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-object v0, v0, Landroid/support/design/internal/c;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    .line 471
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    invoke-virtual {p0, v0}, Landroid/support/design/internal/c$b;->a(Landroid/support/v7/view/menu/j;)V

    .line 474
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/j;->a(Z)V

    .line 477
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 478
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 479
    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 480
    if-eqz v7, :cond_3

    .line 481
    iget-object v1, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/c$e;

    iget-object v6, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget v6, v6, Landroid/support/design/internal/c;->j:I

    const/4 v10, 0x0

    invoke-direct {v2, v6, v10}, Landroid/support/design/internal/c$e;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_3
    iget-object v1, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/c$f;

    invoke-direct {v2, v0}, Landroid/support/design/internal/c$f;-><init>(Landroid/support/v7/view/menu/j;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    const/4 v2, 0x0

    .line 485
    iget-object v1, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 486
    const/4 v1, 0x0

    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v11

    move v6, v1

    :goto_2
    if-ge v6, v11, :cond_8

    .line 487
    invoke-interface {v9, v6}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/j;

    .line 488
    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 489
    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 490
    const/4 v2, 0x1

    .line 492
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->isCheckable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 493
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/support/v7/view/menu/j;->a(Z)V

    .line 495
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 496
    invoke-virtual {p0, v0}, Landroid/support/design/internal/c$b;->a(Landroid/support/v7/view/menu/j;)V

    .line 498
    :cond_6
    iget-object v12, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    new-instance v13, Landroid/support/design/internal/c$f;

    invoke-direct {v13, v1}, Landroid/support/design/internal/c$f;-><init>(Landroid/support/v7/view/menu/j;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 501
    :cond_8
    if-eqz v2, :cond_9

    .line 502
    iget-object v0, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v10, v0}, Landroid/support/design/internal/c$b;->a(II)V

    :cond_9
    move v0, v5

    .line 469
    :goto_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v5, v0

    goto/16 :goto_1

    .line 506
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getGroupId()I

    move-result v6

    .line 507
    if-eq v6, v5, :cond_d

    .line 508
    iget-object v1, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 509
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    .line 510
    :goto_4
    if-eqz v7, :cond_b

    .line 511
    add-int/lit8 v2, v2, 0x1

    .line 512
    iget-object v3, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/design/internal/c$e;

    iget-object v5, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget v5, v5, Landroid/support/design/internal/c;->j:I

    iget-object v9, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget v9, v9, Landroid/support/design/internal/c;->j:I

    invoke-direct {v4, v5, v9}, Landroid/support/design/internal/c$e;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_b
    :goto_5
    new-instance v3, Landroid/support/design/internal/c$f;

    invoke-direct {v3, v0}, Landroid/support/design/internal/c$f;-><init>(Landroid/support/v7/view/menu/j;)V

    .line 520
    iput-boolean v1, v3, Landroid/support/design/internal/c$f;->a:Z

    .line 521
    iget-object v0, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    move v4, v2

    move v0, v6

    .line 522
    goto :goto_3

    .line 509
    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    .line 515
    :cond_d
    if-nez v3, :cond_f

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 516
    const/4 v1, 0x1

    .line 517
    iget-object v2, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v4, v2}, Landroid/support/design/internal/c$b;->a(II)V

    move v2, v4

    goto :goto_5

    .line 525
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/c$b;->d:Z

    goto/16 :goto_0

    :cond_f
    move v1, v3

    move v2, v4

    goto :goto_5
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Landroid/support/design/internal/c$j;
    .locals 3

    .prologue
    .line 390
    packed-switch p2, :pswitch_data_0

    .line 400
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 392
    :pswitch_0
    new-instance v0, Landroid/support/design/internal/c$g;

    iget-object v1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-object v1, v1, Landroid/support/design/internal/c;->d:Landroid/view/LayoutInflater;

    iget-object v2, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-object v2, v2, Landroid/support/design/internal/c;->k:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, p1, v2}, Landroid/support/design/internal/c$g;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 394
    :pswitch_1
    new-instance v0, Landroid/support/design/internal/c$i;

    iget-object v1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-object v1, v1, Landroid/support/design/internal/c;->d:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/c$i;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 396
    :pswitch_2
    new-instance v0, Landroid/support/design/internal/c$h;

    iget-object v1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-object v1, v1, Landroid/support/design/internal/c;->d:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/c$h;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 398
    :pswitch_3
    new-instance v0, Landroid/support/design/internal/c$a;

    iget-object v1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-object v1, v1, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/support/design/internal/c$a;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Landroid/support/design/internal/c$b;->c()V

    .line 451
    invoke-virtual {p0}, Landroid/support/design/internal/c$b;->notifyDataSetChanged()V

    .line 452
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 569
    const-string v0, "android:menu:checked"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 570
    if-eqz v1, :cond_2

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/c$b;->d:Z

    .line 572
    iget-object v0, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/c$d;

    .line 573
    instance-of v3, v0, Landroid/support/design/internal/c$f;

    if-eqz v3, :cond_0

    .line 574
    check-cast v0, Landroid/support/design/internal/c$f;

    invoke-virtual {v0}, Landroid/support/design/internal/c$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 576
    invoke-virtual {p0, v0}, Landroid/support/design/internal/c$b;->a(Landroid/support/v7/view/menu/j;)V

    .line 581
    :cond_1
    iput-boolean v4, p0, Landroid/support/design/internal/c$b;->d:Z

    .line 582
    invoke-direct {p0}, Landroid/support/design/internal/c$b;->c()V

    .line 585
    :cond_2
    const-string v0, "android:menu:action_views"

    .line 586
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 587
    iget-object v0, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/c$d;

    .line 588
    instance-of v1, v0, Landroid/support/design/internal/c$f;

    if-eqz v1, :cond_3

    .line 589
    check-cast v0, Landroid/support/design/internal/c$f;

    invoke-virtual {v0}, Landroid/support/design/internal/c$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v4

    .line 590
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/support/v7/view/menu/j;->getActionView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 591
    :goto_1
    if-eqz v1, :cond_3

    .line 592
    invoke-virtual {v4}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    .line 590
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 596
    :cond_5
    return-void
.end method

.method public a(Landroid/support/design/internal/c$j;)V
    .locals 1

    .prologue
    .line 444
    instance-of v0, p1, Landroid/support/design/internal/c$g;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p1, Landroid/support/design/internal/c$j;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->a()V

    .line 447
    :cond_0
    return-void
.end method

.method public a(Landroid/support/design/internal/c$j;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 405
    invoke-virtual {p0, p2}, Landroid/support/design/internal/c$b;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 440
    :goto_0
    return-void

    .line 407
    :pswitch_0
    iget-object v0, p1, Landroid/support/design/internal/c$j;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    .line 408
    iget-object v1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-object v1, v1, Landroid/support/design/internal/c;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 409
    iget-object v1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-boolean v1, v1, Landroid/support/design/internal/c;->f:Z

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget v1, v1, Landroid/support/design/internal/c;->e:I

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 412
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-object v1, v1, Landroid/support/design/internal/c;->g:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-object v1, v1, Landroid/support/design/internal/c;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 415
    :cond_1
    iget-object v1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-object v1, v1, Landroid/support/design/internal/c;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/internal/c$b;->a:Landroid/support/design/internal/c;

    iget-object v1, v1, Landroid/support/design/internal/c;->i:Landroid/graphics/drawable/Drawable;

    .line 416
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 415
    :goto_1
    invoke-static {v0, v1}, Landroid/support/v4/view/ae;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 417
    iget-object v1, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/c$f;

    .line 418
    iget-boolean v2, v1, Landroid/support/design/internal/c$f;->a:Z

    invoke-virtual {v0, v2}, Landroid/support/design/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 419
    invoke-virtual {v1}, Landroid/support/design/internal/c$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/support/design/internal/NavigationMenuItemView;->a(Landroid/support/v7/view/menu/j;I)V

    goto :goto_0

    .line 416
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 423
    :pswitch_1
    iget-object v0, p1, Landroid/support/design/internal/c$j;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 424
    iget-object v1, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/c$f;

    .line 425
    invoke-virtual {v1}, Landroid/support/design/internal/c$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 429
    :pswitch_2
    iget-object v0, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    .line 430
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/c$e;

    .line 431
    iget-object v1, p1, Landroid/support/design/internal/c$j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/design/internal/c$e;->a()I

    move-result v2

    .line 432
    invoke-virtual {v0}, Landroid/support/design/internal/c$e;->b()I

    move-result v0

    .line 431
    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/support/v7/view/menu/j;)V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/design/internal/c$b;->c:Landroid/support/v7/view/menu/j;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/j;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/c$b;->c:Landroid/support/v7/view/menu/j;

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Landroid/support/design/internal/c$b;->c:Landroid/support/v7/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/j;->setChecked(Z)Landroid/view/MenuItem;

    .line 542
    :cond_2
    iput-object p1, p0, Landroid/support/design/internal/c$b;->c:Landroid/support/v7/view/menu/j;

    .line 543
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/j;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 599
    iput-boolean p1, p0, Landroid/support/design/internal/c$b;->d:Z

    .line 600
    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 547
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 548
    iget-object v0, p0, Landroid/support/design/internal/c$b;->c:Landroid/support/v7/view/menu/j;

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "android:menu:checked"

    iget-object v2, p0, Landroid/support/design/internal/c$b;->c:Landroid/support/v7/view/menu/j;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 553
    iget-object v0, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/c$d;

    .line 554
    instance-of v4, v0, Landroid/support/design/internal/c$f;

    if-eqz v4, :cond_1

    .line 555
    check-cast v0, Landroid/support/design/internal/c$f;

    invoke-virtual {v0}, Landroid/support/design/internal/c$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v4

    .line 556
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/view/menu/j;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 557
    :goto_1
    if-eqz v0, :cond_1

    .line 558
    new-instance v5, Landroid/support/design/internal/ParcelableSparseArray;

    invoke-direct {v5}, Landroid/support/design/internal/ParcelableSparseArray;-><init>()V

    .line 559
    invoke-virtual {v0, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 560
    invoke-virtual {v4}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v0

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 556
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 564
    :cond_3
    const-string v0, "android:menu:action_views"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 565
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 362
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/design/internal/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/c$d;

    .line 373
    instance-of v1, v0, Landroid/support/design/internal/c$e;

    if-eqz v1, :cond_0

    .line 374
    const/4 v0, 0x2

    .line 382
    :goto_0
    return v0

    .line 375
    :cond_0
    instance-of v1, v0, Landroid/support/design/internal/c$c;

    if-eqz v1, :cond_1

    .line 376
    const/4 v0, 0x3

    goto :goto_0

    .line 377
    :cond_1
    instance-of v1, v0, Landroid/support/design/internal/c$f;

    if-eqz v1, :cond_3

    .line 378
    check-cast v0, Landroid/support/design/internal/c$f;

    .line 379
    invoke-virtual {v0}, Landroid/support/design/internal/c$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 385
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown item type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 342
    check-cast p1, Landroid/support/design/internal/c$j;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/c$b;->a(Landroid/support/design/internal/c$j;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/c$b;->a(Landroid/view/ViewGroup;I)Landroid/support/design/internal/c$j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$v;)V
    .locals 0

    .prologue
    .line 342
    check-cast p1, Landroid/support/design/internal/c$j;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/c$b;->a(Landroid/support/design/internal/c$j;)V

    return-void
.end method
