.class Landroid/support/v7/a/m;
.super Landroid/support/v7/a/h;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v4/view/m;
.implements Landroid/support/v7/view/menu/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/a/m$c;,
        Landroid/support/v7/a/m$d;,
        Landroid/support/v7/a/m$a;,
        Landroid/support/v7/a/m$e;,
        Landroid/support/v7/a/m$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:[Landroid/support/v7/a/m$d;

.field private E:Landroid/support/v7/a/m$d;

.field private F:Z

.field private final G:Ljava/lang/Runnable;

.field private H:Z

.field private I:Landroid/graphics/Rect;

.field private J:Landroid/graphics/Rect;

.field private K:Landroid/support/v7/a/o;

.field m:Landroid/support/v7/view/b;

.field n:Landroid/support/v7/widget/ActionBarContextView;

.field o:Landroid/widget/PopupWindow;

.field p:Ljava/lang/Runnable;

.field q:Landroid/support/v4/view/au;

.field r:Z

.field s:I

.field private t:Landroid/support/v7/widget/ae;

.field private u:Landroid/support/v7/a/m$a;

.field private v:Landroid/support/v7/a/m$e;

.field private w:Z

.field private x:Landroid/view/ViewGroup;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/f;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/a/h;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/f;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/a/m;->q:Landroid/support/v4/view/au;

    .line 125
    new-instance v0, Landroid/support/v7/a/m$1;

    invoke-direct {v0, p0}, Landroid/support/v7/a/m$1;-><init>(Landroid/support/v7/a/m;)V

    iput-object v0, p0, Landroid/support/v7/a/m;->G:Ljava/lang/Runnable;

    .line 148
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 1719
    iget-boolean v0, p0, Landroid/support/v7/a/m;->w:Z

    if-eqz v0, :cond_0

    .line 1720
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1723
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v7/a/m$d;Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, -0x2

    .line 1093
    iget-boolean v0, p1, Landroid/support/v7/a/m$d;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/a/m;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    iget v0, p1, Landroid/support/v7/a/m$d;->a:I

    if-nez v0, :cond_2

    .line 1100
    iget-object v4, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    .line 1101
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1102
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    move v0, v9

    .line 1104
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    move v4, v9

    .line 1107
    :goto_2
    if-eqz v0, :cond_2

    if-nez v4, :cond_0

    .line 1112
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/a/m;->r()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1113
    if-eqz v0, :cond_5

    iget v4, p1, Landroid/support/v7/a/m$d;->a:I

    iget-object v5, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1115
    invoke-virtual {p0, p1, v9}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1102
    goto :goto_1

    :cond_4
    move v4, v3

    .line 1104
    goto :goto_2

    .line 1119
    :cond_5
    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1120
    if-eqz v8, :cond_0

    .line 1125
    invoke-direct {p0, p1, p2}, Landroid/support/v7/a/m;->b(Landroid/support/v7/a/m$d;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p1, Landroid/support/v7/a/m$d;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v7/a/m$d;->q:Z

    if-eqz v0, :cond_c

    .line 1131
    :cond_6
    iget-object v0, p1, Landroid/support/v7/a/m$d;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 1133
    invoke-direct {p0, p1}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/a/m$d;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1141
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Landroid/support/v7/a/m;->c(Landroid/support/v7/a/m$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/a/m$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p1, Landroid/support/v7/a/m$d;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1146
    if-nez v0, :cond_e

    .line 1147
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 1150
    :goto_4
    iget v0, p1, Landroid/support/v7/a/m$d;->b:I

    .line 1151
    iget-object v4, p1, Landroid/support/v7/a/m$d;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1153
    iget-object v0, p1, Landroid/support/v7/a/m$d;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1154
    if-eqz v0, :cond_8

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 1155
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/a/m$d;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1157
    :cond_8
    iget-object v0, p1, Landroid/support/v7/a/m$d;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/a/m$d;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    iget-object v0, p1, Landroid/support/v7/a/m$d;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1164
    iget-object v0, p1, Landroid/support/v7/a/m$d;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    move v1, v2

    .line 1175
    :cond_a
    :goto_5
    iput-boolean v3, p1, Landroid/support/v7/a/m$d;->n:Z

    .line 1177
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/support/v7/a/m$d;->d:I

    iget v4, p1, Landroid/support/v7/a/m$d;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1184
    iget v1, p1, Landroid/support/v7/a/m$d;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1185
    iget v1, p1, Landroid/support/v7/a/m$d;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1187
    iget-object v1, p1, Landroid/support/v7/a/m$d;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    iput-boolean v9, p1, Landroid/support/v7/a/m$d;->o:Z

    goto/16 :goto_0

    .line 1135
    :cond_b
    iget-boolean v0, p1, Landroid/support/v7/a/m$d;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/support/v7/a/m$d;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1137
    iget-object v0, p1, Landroid/support/v7/a/m$d;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_3

    .line 1166
    :cond_c
    iget-object v0, p1, Landroid/support/v7/a/m$d;->i:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1169
    iget-object v0, p1, Landroid/support/v7/a/m$d;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1170
    if-eqz v0, :cond_d

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_a

    :cond_d
    move v1, v2

    goto :goto_5

    :cond_e
    move-object v1, v0

    goto :goto_4
.end method

.method private a(Landroid/support/v7/view/menu/h;Z)V
    .locals 6

    .prologue
    const/16 v5, 0x6c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1199
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-interface {v0}, Landroid/support/v7/widget/ae;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    .line 1200
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ao;->a(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    .line 1201
    invoke-interface {v0}, Landroid/support/v7/widget/ae;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1203
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/a/m;->r()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1205
    iget-object v1, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-interface {v1}, Landroid/support/v7/widget/ae;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_4

    .line 1206
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/a/m;->q()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1208
    iget-boolean v1, p0, Landroid/support/v7/a/m;->r:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/a/m;->s:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1210
    iget-object v1, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/a/m;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1211
    iget-object v1, p0, Landroid/support/v7/a/m;->G:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1214
    :cond_2
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v1

    .line 1218
    iget-object v2, v1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Landroid/support/v7/a/m$d;->r:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/support/v7/a/m$d;->i:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    .line 1219
    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1220
    iget-object v1, v1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1221
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-interface {v0}, Landroid/support/v7/widget/ae;->h()Z

    .line 1240
    :cond_3
    :goto_0
    return-void

    .line 1225
    :cond_4
    iget-object v1, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-interface {v1}, Landroid/support/v7/widget/ae;->i()Z

    .line 1226
    invoke-virtual {p0}, Landroid/support/v7/a/m;->q()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1227
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v1

    .line 1228
    iget-object v1, v1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1234
    :cond_5
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v0

    .line 1236
    iput-boolean v3, v0, Landroid/support/v7/a/m$d;->q:Z

    .line 1237
    invoke-virtual {p0, v0, v4}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;Z)V

    .line 1239
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/a/m$d;)Z
    .locals 2

    .prologue
    .line 1192
    invoke-virtual {p0}, Landroid/support/v7/a/m;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/a/m$d;->a(Landroid/content/Context;)V

    .line 1193
    new-instance v0, Landroid/support/v7/a/m$c;

    iget-object v1, p1, Landroid/support/v7/a/m$d;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/a/m$c;-><init>(Landroid/support/v7/a/m;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/a/m$d;->g:Landroid/view/ViewGroup;

    .line 1194
    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/a/m$d;->c:I

    .line 1195
    const/4 v0, 0x1

    return v0
.end method

.method private a(Landroid/support/v7/a/m$d;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1583
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1603
    :cond_0
    :goto_0
    return v0

    .line 1591
    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/a/m$d;->m:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/a/m;->b(Landroid/support/v7/a/m$d;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_3

    .line 1593
    iget-object v0, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/view/menu/h;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1596
    :cond_3
    if-eqz v0, :cond_0

    .line 1598
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-nez v1, :cond_0

    .line 1599
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;Z)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewParent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1025
    if-nez p1, :cond_0

    move v0, v2

    .line 1043
    :goto_0
    return v0

    .line 1029
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v1, p1

    .line 1031
    :goto_1
    if-nez v1, :cond_1

    .line 1036
    const/4 v0, 0x1

    goto :goto_0

    .line 1037
    :cond_1
    if-eq v1, v3, :cond_2

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 1038
    invoke-static {v0}, Landroid/support/v4/view/ae;->H(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 1043
    goto :goto_0

    .line 1045
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/a/m$d;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1243
    iget-object v1, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    .line 1246
    iget v0, p1, Landroid/support/v7/a/m$d;->a:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/v7/a/m$d;->a:I

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-eqz v0, :cond_4

    .line 1248
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1249
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1250
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v0, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1252
    const/4 v0, 0x0

    .line 1253
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3

    .line 1254
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1255
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1256
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1257
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1264
    :goto_0
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_2

    .line 1265
    if-nez v0, :cond_1

    .line 1266
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1267
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1269
    :cond_1
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    move-object v2, v0

    .line 1272
    if-eqz v2, :cond_4

    .line 1273
    new-instance v0, Landroid/support/v7/view/d;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    .line 1274
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1278
    :goto_1
    new-instance v1, Landroid/support/v7/view/menu/h;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;)V

    .line 1279
    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h$a;)V

    .line 1280
    invoke-virtual {p1, v1}, Landroid/support/v7/a/m$d;->a(Landroid/support/v7/view/menu/h;)V

    .line 1282
    return v5

    .line 1260
    :cond_3
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/a/m$d;Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1307
    invoke-virtual {p0}, Landroid/support/v7/a/m;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return v2

    .line 1312
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/a/m$d;->m:Z

    if-eqz v0, :cond_2

    move v2, v1

    .line 1313
    goto :goto_0

    .line 1316
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/m;->E:Landroid/support/v7/a/m$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/a/m;->E:Landroid/support/v7/a/m$d;

    if-eq v0, p1, :cond_3

    .line 1318
    iget-object v0, p0, Landroid/support/v7/a/m;->E:Landroid/support/v7/a/m$d;

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;Z)V

    .line 1321
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/a/m;->r()Landroid/view/Window$Callback;

    move-result-object v3

    .line 1323
    if-eqz v3, :cond_4

    .line 1324
    iget v0, p1, Landroid/support/v7/a/m$d;->a:I

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/a/m$d;->i:Landroid/view/View;

    .line 1327
    :cond_4
    iget v0, p1, Landroid/support/v7/a/m$d;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/support/v7/a/m$d;->a:I

    const/16 v4, 0x6c

    if-ne v0, v4, :cond_c

    :cond_5
    move v0, v1

    .line 1330
    :goto_1
    if-eqz v0, :cond_6

    iget-object v4, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-eqz v4, :cond_6

    .line 1333
    iget-object v4, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-interface {v4}, Landroid/support/v7/widget/ae;->j()V

    .line 1336
    :cond_6
    iget-object v4, p1, Landroid/support/v7/a/m$d;->i:Landroid/view/View;

    if-nez v4, :cond_12

    if-eqz v0, :cond_7

    .line 1337
    invoke-virtual {p0}, Landroid/support/v7/a/m;->n()Landroid/support/v7/a/a;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/a/p;

    if-nez v4, :cond_12

    .line 1340
    :cond_7
    iget-object v4, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Landroid/support/v7/a/m$d;->r:Z

    if-eqz v4, :cond_e

    .line 1341
    :cond_8
    iget-object v4, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    if-nez v4, :cond_9

    .line 1342
    invoke-direct {p0, p1}, Landroid/support/v7/a/m;->b(Landroid/support/v7/a/m$d;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    if-eqz v4, :cond_0

    .line 1347
    :cond_9
    if-eqz v0, :cond_b

    iget-object v4, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-eqz v4, :cond_b

    .line 1348
    iget-object v4, p0, Landroid/support/v7/a/m;->u:Landroid/support/v7/a/m$a;

    if-nez v4, :cond_a

    .line 1349
    new-instance v4, Landroid/support/v7/a/m$a;

    invoke-direct {v4, p0}, Landroid/support/v7/a/m$a;-><init>(Landroid/support/v7/a/m;)V

    iput-object v4, p0, Landroid/support/v7/a/m;->u:Landroid/support/v7/a/m$a;

    .line 1351
    :cond_a
    iget-object v4, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    iget-object v5, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    iget-object v6, p0, Landroid/support/v7/a/m;->u:Landroid/support/v7/a/m$a;

    invoke-interface {v4, v5, v6}, Landroid/support/v7/widget/ae;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V

    .line 1356
    :cond_b
    iget-object v4, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->g()V

    .line 1357
    iget v4, p1, Landroid/support/v7/a/m$d;->a:I

    iget-object v5, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1359
    invoke-virtual {p1, v7}, Landroid/support/v7/a/m$d;->a(Landroid/support/v7/view/menu/h;)V

    .line 1361
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    iget-object v1, p0, Landroid/support/v7/a/m;->u:Landroid/support/v7/a/m$a;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/widget/ae;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 1327
    goto :goto_1

    .line 1369
    :cond_d
    iput-boolean v2, p1, Landroid/support/v7/a/m$d;->r:Z

    .line 1374
    :cond_e
    iget-object v4, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->g()V

    .line 1378
    iget-object v4, p1, Landroid/support/v7/a/m$d;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_f

    .line 1379
    iget-object v4, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    iget-object v5, p1, Landroid/support/v7/a/m$d;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/h;->d(Landroid/os/Bundle;)V

    .line 1380
    iput-object v7, p1, Landroid/support/v7/a/m$d;->s:Landroid/os/Bundle;

    .line 1384
    :cond_f
    iget-object v4, p1, Landroid/support/v7/a/m$d;->i:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v3, v2, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1385
    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-eqz v0, :cond_10

    .line 1388
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    iget-object v1, p0, Landroid/support/v7/a/m;->u:Landroid/support/v7/a/m$a;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/widget/ae;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V

    .line 1390
    :cond_10
    iget-object v0, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->h()V

    goto/16 :goto_0

    .line 1395
    :cond_11
    if-eqz p2, :cond_13

    .line 1396
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 1395
    :goto_2
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1397
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_14

    move v0, v1

    :goto_3
    iput-boolean v0, p1, Landroid/support/v7/a/m$d;->p:Z

    .line 1398
    iget-object v0, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    iget-boolean v3, p1, Landroid/support/v7/a/m$d;->p:Z

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/h;->setQwertyMode(Z)V

    .line 1399
    iget-object v0, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->h()V

    .line 1403
    :cond_12
    iput-boolean v1, p1, Landroid/support/v7/a/m$d;->m:Z

    .line 1404
    iput-boolean v2, p1, Landroid/support/v7/a/m$d;->n:Z

    .line 1405
    iput-object p1, p0, Landroid/support/v7/a/m;->E:Landroid/support/v7/a/m$d;

    move v2, v1

    .line 1407
    goto/16 :goto_0

    .line 1396
    :cond_13
    const/4 v0, -0x1

    goto :goto_2

    :cond_14
    move v0, v2

    .line 1397
    goto :goto_3
.end method

.method private c(Landroid/support/v7/a/m$d;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1286
    iget-object v0, p1, Landroid/support/v7/a/m$d;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p1, Landroid/support/v7/a/m$d;->i:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/a/m$d;->h:Landroid/view/View;

    .line 1303
    :goto_0
    return v1

    .line 1291
    :cond_0
    iget-object v0, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_1

    move v1, v2

    .line 1292
    goto :goto_0

    .line 1295
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/m;->v:Landroid/support/v7/a/m$e;

    if-nez v0, :cond_2

    .line 1296
    new-instance v0, Landroid/support/v7/a/m$e;

    invoke-direct {v0, p0}, Landroid/support/v7/a/m$e;-><init>(Landroid/support/v7/a/m;)V

    iput-object v0, p0, Landroid/support/v7/a/m;->v:Landroid/support/v7/a/m$e;

    .line 1299
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/m;->v:Landroid/support/v7/a/m$e;

    invoke-virtual {p1, v0}, Landroid/support/v7/a/m$d;->a(Landroid/support/v7/view/menu/o$a;)Landroid/support/v7/view/menu/p;

    move-result-object v0

    .line 1301
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/a/m$d;->h:Landroid/view/View;

    .line 1303
    iget-object v0, p1, Landroid/support/v7/a/m$d;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private d(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1607
    iget v0, p0, Landroid/support/v7/a/m;->s:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/a/m;->s:I

    .line 1609
    iget-boolean v0, p0, Landroid/support/v7/a/m;->r:Z

    if-nez v0, :cond_0

    .line 1610
    iget-object v0, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/m;->G:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ae;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1611
    iput-boolean v2, p0, Landroid/support/v7/a/m;->r:Z

    .line 1613
    :cond_0
    return-void
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1461
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1462
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v0

    .line 1463
    iget-boolean v1, v0, Landroid/support/v7/a/m$d;->o:Z

    if-nez v1, :cond_0

    .line 1464
    invoke-direct {p0, v0, p2}, Landroid/support/v7/a/m;->b(Landroid/support/v7/a/m$d;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1472
    iget-object v0, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1521
    :goto_0
    return v0

    .line 1477
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v3

    .line 1478
    if-nez p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    .line 1479
    invoke-interface {v0}, Landroid/support/v7/widget/ae;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    .line 1480
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ao;->a(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1481
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-interface {v0}, Landroid/support/v7/widget/ae;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1482
    invoke-virtual {p0}, Landroid/support/v7/a/m;->q()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v3, p2}, Landroid/support/v7/a/m;->b(Landroid/support/v7/a/m$d;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1483
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-interface {v0}, Landroid/support/v7/widget/ae;->h()Z

    move-result v2

    .line 1512
    :goto_1
    if-eqz v2, :cond_1

    .line 1513
    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1515
    if-eqz v0, :cond_6

    .line 1516
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    :goto_2
    move v0, v2

    .line 1521
    goto :goto_0

    .line 1486
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-interface {v0}, Landroid/support/v7/widget/ae;->i()Z

    move-result v2

    goto :goto_1

    .line 1489
    :cond_3
    iget-boolean v0, v3, Landroid/support/v7/a/m$d;->o:Z

    if-nez v0, :cond_4

    iget-boolean v0, v3, Landroid/support/v7/a/m$d;->n:Z

    if-eqz v0, :cond_5

    .line 1492
    :cond_4
    iget-boolean v0, v3, Landroid/support/v7/a/m$d;->o:Z

    .line 1494
    invoke-virtual {p0, v3, v2}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;Z)V

    move v2, v0

    goto :goto_1

    .line 1495
    :cond_5
    iget-boolean v0, v3, Landroid/support/v7/a/m$d;->m:Z

    if-eqz v0, :cond_7

    .line 1497
    iget-boolean v0, v3, Landroid/support/v7/a/m$d;->r:Z

    if-eqz v0, :cond_8

    .line 1500
    iput-boolean v1, v3, Landroid/support/v7/a/m$d;->m:Z

    .line 1501
    invoke-direct {p0, v3, p2}, Landroid/support/v7/a/m;->b(Landroid/support/v7/a/m$d;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1504
    :goto_3
    if-eqz v0, :cond_7

    .line 1506
    invoke-direct {p0, v3, p2}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 1518
    :cond_6
    const-string v0, "AppCompatDelegate"

    const-string v1, "Couldn\'t get audio manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private h(I)I
    .locals 2

    .prologue
    .line 1726
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1727
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    const/16 p1, 0x6c

    .line 1736
    :cond_0
    :goto_0
    return p1

    .line 1730
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1731
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const/16 p1, 0x6d

    goto :goto_0
.end method

.method private x()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-boolean v0, p0, Landroid/support/v7/a/m;->w:Z

    if-nez v0, :cond_2

    .line 320
    invoke-direct {p0}, Landroid/support/v7/a/m;->y()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/m;->x:Landroid/view/ViewGroup;

    .line 323
    invoke-virtual {p0}, Landroid/support/v7/a/m;->s()Ljava/lang/CharSequence;

    move-result-object v0

    .line 324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    invoke-virtual {p0, v0}, Landroid/support/v7/a/m;->b(Ljava/lang/CharSequence;)V

    .line 328
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/a/m;->z()V

    .line 330
    iget-object v0, p0, Landroid/support/v7/a/m;->x:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/support/v7/a/m;->a(Landroid/view/ViewGroup;)V

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/m;->w:Z

    .line 339
    invoke-virtual {p0, v2, v2}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Landroid/support/v7/a/m;->q()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_2

    .line 341
    :cond_1
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Landroid/support/v7/a/m;->d(I)V

    .line 344
    :cond_2
    return-void
.end method

.method private y()Landroid/view/ViewGroup;
    .locals 8

    .prologue
    const v7, 0x1020002

    const/16 v6, 0x6d

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 347
    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 349
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 356
    invoke-virtual {p0, v4}, Landroid/support/v7/a/m;->c(I)Z

    .line 361
    :cond_1
    :goto_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    invoke-virtual {p0, v6}, Landroid/support/v7/a/m;->c(I)Z

    .line 364
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/support/v7/a/m;->c(I)Z

    .line 367
    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/a/m;->k:Z

    .line 368
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 371
    iget-object v0, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 373
    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 377
    iget-boolean v1, p0, Landroid/support/v7/a/m;->l:Z

    if-nez v1, :cond_a

    .line 378
    iget-boolean v1, p0, Landroid/support/v7/a/m;->k:Z

    if-eqz v1, :cond_5

    .line 380
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 384
    iput-boolean v5, p0, Landroid/support/v7/a/m;->i:Z

    iput-boolean v5, p0, Landroid/support/v7/a/m;->h:Z

    move-object v2, v0

    .line 465
    :goto_1
    if-nez v2, :cond_d

    .line 466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/a/m;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/a/m;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/a/m;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/a/m;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/a/m;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_4
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/support/v7/a/m;->c(I)Z

    goto/16 :goto_0

    .line 385
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/a/m;->h:Z

    if-eqz v0, :cond_11

    .line 391
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 392
    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 395
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    .line 396
    new-instance v0, Landroid/support/v7/view/d;

    iget-object v2, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    .line 402
    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    .line 403
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 405
    sget v1, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    .line 406
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ae;

    iput-object v1, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    .line 407
    iget-object v1, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-virtual {p0}, Landroid/support/v7/a/m;->r()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/ae;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 412
    iget-boolean v1, p0, Landroid/support/v7/a/m;->i:Z

    if-eqz v1, :cond_6

    .line 413
    iget-object v1, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-interface {v1, v6}, Landroid/support/v7/widget/ae;->a(I)V

    .line 415
    :cond_6
    iget-boolean v1, p0, Landroid/support/v7/a/m;->A:Z

    if-eqz v1, :cond_7

    .line 416
    iget-object v1, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/ae;->a(I)V

    .line 418
    :cond_7
    iget-boolean v1, p0, Landroid/support/v7/a/m;->B:Z

    if-eqz v1, :cond_8

    .line 419
    iget-object v1, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/support/v7/widget/ae;->a(I)V

    :cond_8
    move-object v2, v0

    .line 421
    goto/16 :goto_1

    .line 398
    :cond_9
    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    goto :goto_2

    .line 423
    :cond_a
    iget-boolean v1, p0, Landroid/support/v7/a/m;->j:Z

    if-eqz v1, :cond_b

    .line 424
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 430
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_c

    .line 433
    new-instance v0, Landroid/support/v7/a/m$2;

    invoke-direct {v0, p0}, Landroid/support/v7/a/m$2;-><init>(Landroid/support/v7/a/m;)V

    invoke-static {v1, v0}, Landroid/support/v4/view/ae;->a(Landroid/view/View;Landroid/support/v4/view/y;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 427
    :cond_b
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    .line 455
    check-cast v0, Landroid/support/v7/widget/aj;

    new-instance v2, Landroid/support/v7/a/m$3;

    invoke-direct {v2, p0}, Landroid/support/v7/a/m$3;-><init>(Landroid/support/v7/a/m;)V

    invoke-interface {v0, v2}, Landroid/support/v7/widget/aj;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/aj$a;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 476
    :cond_d
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-nez v0, :cond_e

    .line 477
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/a/m;->y:Landroid/widget/TextView;

    .line 481
    :cond_e
    invoke-static {v2}, Landroid/support/v7/widget/bn;->b(Landroid/view/View;)V

    .line 483
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 486
    iget-object v1, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 487
    if-eqz v1, :cond_10

    .line 490
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_f

    .line 491
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 492
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 493
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 498
    :cond_f
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 499
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 503
    instance-of v4, v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_10

    .line 504
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 509
    :cond_10
    iget-object v1, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 511
    new-instance v1, Landroid/support/v7/a/m$4;

    invoke-direct {v1, p0}, Landroid/support/v7/a/m$4;-><init>(Landroid/support/v7/a/m;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$a;)V

    .line 521
    return-object v2

    :cond_11
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private z()V
    .locals 5

    .prologue
    .line 527
    iget-object v0, p0, Landroid/support/v7/a/m;->x:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 533
    iget-object v1, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 534
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 535
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 536
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 534
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/ContentFrameLayout;->a(IIII)V

    .line 538
    iget-object v1, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 539
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 540
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 542
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 544
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 543
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 546
    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 547
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 548
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 547
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 550
    :cond_1
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 552
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 551
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 554
    :cond_2
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 555
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 556
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 555
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 558
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 560
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 561
    return-void
.end method


# virtual methods
.method protected a(IZ)Landroid/support/v7/a/m$d;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1566
    iget-object v0, p0, Landroid/support/v7/a/m;->D:[Landroid/support/v7/a/m$d;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 1567
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/a/m$d;

    .line 1568
    if-eqz v0, :cond_1

    .line 1569
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1571
    :cond_1
    iput-object v1, p0, Landroid/support/v7/a/m;->D:[Landroid/support/v7/a/m$d;

    move-object v0, v1

    .line 1574
    :cond_2
    aget-object v1, v0, p1

    .line 1575
    if-nez v1, :cond_3

    .line 1576
    new-instance v1, Landroid/support/v7/a/m$d;

    invoke-direct {v1, p1}, Landroid/support/v7/a/m$d;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1578
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method a(Landroid/view/Menu;)Landroid/support/v7/a/m$d;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1553
    iget-object v3, p0, Landroid/support/v7/a/m;->D:[Landroid/support/v7/a/m$d;

    .line 1554
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1555
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1556
    aget-object v1, v3, v2

    .line 1557
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1561
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1554
    goto :goto_0

    .line 1555
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1561
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 3

    .prologue
    .line 684
    if-nez p1, :cond_0

    .line 685
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    .line 692
    :cond_1
    new-instance v0, Landroid/support/v7/a/m$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/a/m$b;-><init>(Landroid/support/v7/a/m;Landroid/support/v7/view/b$a;)V

    .line 694
    invoke-virtual {p0}, Landroid/support/v7/a/m;->a()Landroid/support/v7/a/a;

    move-result-object v1

    .line 695
    if-eqz v1, :cond_2

    .line 696
    invoke-virtual {v1, v0}, Landroid/support/v7/a/a;->a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    .line 697
    iget-object v1, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/a/m;->e:Landroid/support/v7/a/f;

    if-eqz v1, :cond_2

    .line 698
    iget-object v1, p0, Landroid/support/v7/a/m;->e:Landroid/support/v7/a/f;

    iget-object v2, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    invoke-interface {v1, v2}, Landroid/support/v7/a/f;->onSupportActionModeStarted(Landroid/support/v7/view/b;)V

    .line 702
    :cond_2
    iget-object v1, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    if-nez v1, :cond_3

    .line 704
    invoke-virtual {p0, v0}, Landroid/support/v7/a/m;->b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    .line 707
    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/support/v7/a/m;->x()V

    .line 231
    iget-object v0, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1070
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/a/m;->b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_0

    .line 1076
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/a/m;->c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method a(ILandroid/support/v7/a/m$d;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1526
    if-nez p3, :cond_1

    .line 1528
    if-nez p2, :cond_0

    .line 1529
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/m;->D:[Landroid/support/v7/a/m$d;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1530
    iget-object v0, p0, Landroid/support/v7/a/m;->D:[Landroid/support/v7/a/m$d;

    aget-object p2, v0, p1

    .line 1534
    :cond_0
    if-eqz p2, :cond_1

    .line 1536
    iget-object p3, p2, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    .line 1541
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/a/m$d;->o:Z

    if-nez v0, :cond_3

    .line 1550
    :cond_2
    :goto_0
    return-void

    .line 1544
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/a/m;->q()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1548
    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method a(ILandroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 638
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    .line 639
    invoke-virtual {p0}, Landroid/support/v7/a/m;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->g(Z)V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    if-nez p1, :cond_0

    .line 646
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v0

    .line 647
    iget-boolean v1, v0, Landroid/support/v7/a/m$d;->o:Z

    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;Z)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/support/v7/a/m;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/a/m;->w:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/support/v7/a/m;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p1}, Landroid/support/v7/a/a;->a(Landroid/content/res/Configuration;)V

    .line 248
    :cond_0
    invoke-static {}, Landroid/support/v7/widget/k;->a()Landroid/support/v7/widget/k;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/k;->a(Landroid/content/Context;)V

    .line 251
    invoke-virtual {p0}, Landroid/support/v7/a/m;->j()Z

    .line 252
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/ah;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/support/v7/a/m;->n()Landroid/support/v7/a/a;

    move-result-object v0

    .line 156
    if-nez v0, :cond_1

    .line 157
    iput-boolean v1, p0, Landroid/support/v7/a/m;->H:Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->e(Z)V

    goto :goto_0
.end method

.method a(Landroid/support/v7/a/m$d;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1429
    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v7/a/m$d;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    .line 1430
    invoke-interface {v0}, Landroid/support/v7/widget/ae;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1431
    iget-object v0, p1, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {p0, v0}, Landroid/support/v7/a/m;->b(Landroid/support/v7/view/menu/h;)V

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1436
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Landroid/support/v7/a/m$d;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/a/m$d;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1437
    iget-object v1, p1, Landroid/support/v7/a/m$d;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1439
    if-eqz p2, :cond_2

    .line 1440
    iget v0, p1, Landroid/support/v7/a/m$d;->a:I

    invoke-virtual {p0, v0, p1, v3}, Landroid/support/v7/a/m;->a(ILandroid/support/v7/a/m$d;Landroid/view/Menu;)V

    .line 1444
    :cond_2
    iput-boolean v2, p1, Landroid/support/v7/a/m$d;->m:Z

    .line 1445
    iput-boolean v2, p1, Landroid/support/v7/a/m$d;->n:Z

    .line 1446
    iput-boolean v2, p1, Landroid/support/v7/a/m$d;->o:Z

    .line 1449
    iput-object v3, p1, Landroid/support/v7/a/m$d;->h:Landroid/view/View;

    .line 1453
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/a/m$d;->q:Z

    .line 1455
    iget-object v0, p0, Landroid/support/v7/a/m;->E:Landroid/support/v7/a/m$d;

    if-ne v0, p1, :cond_0

    .line 1456
    iput-object v3, p0, Landroid/support/v7/a/m;->E:Landroid/support/v7/a/m$d;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/h;)V
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/a/m;->a(Landroid/support/v7/view/menu/h;Z)V

    .line 680
    return-void
.end method

.method public a(Landroid/support/v7/widget/Toolbar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/a/m;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 198
    instance-of v1, v0, Landroid/support/v7/a/s;

    if-eqz v1, :cond_1

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    iput-object v2, p0, Landroid/support/v7/a/m;->g:Landroid/view/MenuInflater;

    .line 209
    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {v0}, Landroid/support/v7/a/a;->h()V

    .line 213
    :cond_2
    if-eqz p1, :cond_3

    .line 214
    new-instance v1, Landroid/support/v7/a/p;

    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 215
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/a/m;->d:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v0, v2}, Landroid/support/v7/a/p;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 216
    iput-object v1, p0, Landroid/support/v7/a/m;->f:Landroid/support/v7/a/a;

    .line 217
    iget-object v0, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/support/v7/a/p;->i()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 224
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/a/m;->f()V

    goto :goto_0

    .line 219
    :cond_3
    iput-object v2, p0, Landroid/support/v7/a/m;->f:Landroid/support/v7/a/a;

    .line 221
    iget-object v0, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/a/m;->d:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/support/v7/a/m;->x()V

    .line 273
    iget-object v0, p0, Landroid/support/v7/a/m;->x:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 274
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 275
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 277
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/support/v7/a/m;->x()V

    .line 291
    iget-object v0, p0, Landroid/support/v7/a/m;->x:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 292
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 293
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 295
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 903
    invoke-virtual {p0}, Landroid/support/v7/a/m;->a()Landroid/support/v7/a/a;

    move-result-object v2

    .line 904
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/a/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 934
    :cond_0
    :goto_0
    return v0

    .line 910
    :cond_1
    iget-object v2, p0, Landroid/support/v7/a/m;->E:Landroid/support/v7/a/m$d;

    if-eqz v2, :cond_2

    .line 911
    iget-object v2, p0, Landroid/support/v7/a/m;->E:Landroid/support/v7/a/m$d;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 913
    if-eqz v2, :cond_2

    .line 914
    iget-object v1, p0, Landroid/support/v7/a/m;->E:Landroid/support/v7/a/m$d;

    if-eqz v1, :cond_0

    .line 915
    iget-object v1, p0, Landroid/support/v7/a/m;->E:Landroid/support/v7/a/m$d;

    iput-boolean v0, v1, Landroid/support/v7/a/m$d;->n:Z

    goto :goto_0

    .line 925
    :cond_2
    iget-object v2, p0, Landroid/support/v7/a/m;->E:Landroid/support/v7/a/m$d;

    if-nez v2, :cond_3

    .line 926
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v2

    .line 927
    invoke-direct {p0, v2, p2}, Landroid/support/v7/a/m;->b(Landroid/support/v7/a/m$d;Landroid/view/KeyEvent;)Z

    .line 928
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 929
    iput-boolean v1, v2, Landroid/support/v7/a/m$d;->m:Z

    .line 930
    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    .line 934
    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 667
    invoke-virtual {p0}, Landroid/support/v7/a/m;->r()Landroid/view/Window$Callback;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/a/m;->q()Z

    move-result v1

    if-nez v1, :cond_0

    .line 669
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->p()Landroid/support/v7/view/menu/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/a/m;->a(Landroid/view/Menu;)Landroid/support/v7/a/m$d;

    move-result-object v1

    .line 670
    if-eqz v1, :cond_0

    .line 671
    iget v1, v1, Landroid/support/v7/a/m$d;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 939
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_0

    .line 941
    iget-object v1, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    :goto_0
    return v0

    .line 946
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 947
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 948
    if-nez v2, :cond_1

    .line 950
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, p1}, Landroid/support/v7/a/m;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 948
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 950
    :cond_2
    invoke-virtual {p0, v1, p1}, Landroid/support/v7/a/m;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 720
    invoke-virtual {p0}, Landroid/support/v7/a/m;->u()V

    .line 721
    iget-object v0, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    .line 725
    :cond_0
    instance-of v0, p1, Landroid/support/v7/a/m$b;

    if-nez v0, :cond_1

    .line 727
    new-instance v0, Landroid/support/v7/a/m$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/a/m$b;-><init>(Landroid/support/v7/a/m;Landroid/support/v7/view/b$a;)V

    move-object p1, v0

    .line 731
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/m;->e:Landroid/support/v7/a/f;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/a/m;->q()Z

    move-result v0

    if-nez v0, :cond_c

    .line 733
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/a/m;->e:Landroid/support/v7/a/f;

    invoke-interface {v0, p1}, Landroid/support/v7/a/f;->onWindowStartingSupportActionMode(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 739
    :goto_0
    if-eqz v0, :cond_4

    .line 740
    iput-object v0, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    .line 865
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/a/m;->e:Landroid/support/v7/a/f;

    if-eqz v0, :cond_3

    .line 866
    iget-object v0, p0, Landroid/support/v7/a/m;->e:Landroid/support/v7/a/f;

    iget-object v1, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    invoke-interface {v0, v1}, Landroid/support/v7/a/f;->onSupportActionModeStarted(Landroid/support/v7/view/b;)V

    .line 868
    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    return-object v0

    .line 734
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    .line 742
    :cond_4
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v0, :cond_5

    .line 743
    iget-boolean v0, p0, Landroid/support/v7/a/m;->k:Z

    if-eqz v0, :cond_8

    .line 745
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 746
    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 747
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 750
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_7

    .line 751
    iget-object v5, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 752
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 753
    iget v0, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 755
    new-instance v0, Landroid/support/v7/view/d;

    iget-object v6, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    invoke-direct {v0, v6, v2}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    .line 756
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 761
    :goto_2
    new-instance v5, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v5, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 762
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v5, v0, v3, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    .line 764
    iget-object v5, p0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/support/v4/widget/s;->a(Landroid/widget/PopupWindow;I)V

    .line 766
    iget-object v5, p0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 767
    iget-object v5, p0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 769
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 771
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 772
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 771
    invoke-static {v4, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 773
    iget-object v4, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 774
    iget-object v0, p0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 775
    new-instance v0, Landroid/support/v7/a/m$5;

    invoke-direct {v0, p0}, Landroid/support/v7/a/m$5;-><init>(Landroid/support/v7/a/m;)V

    iput-object v0, p0, Landroid/support/v7/a/m;->p:Ljava/lang/Runnable;

    .line 816
    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    .line 817
    invoke-virtual {p0}, Landroid/support/v7/a/m;->u()V

    .line 818
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->c()V

    .line 819
    new-instance v4, Landroid/support/v7/view/e;

    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, p0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    if-nez v0, :cond_9

    move v0, v1

    :goto_4
    invoke-direct {v4, v5, v6, p1, v0}, Landroid/support/v7/view/e;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/b$a;Z)V

    .line 821
    invoke-virtual {v4}, Landroid/support/v7/view/b;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 822
    invoke-virtual {v4}, Landroid/support/v7/view/b;->d()V

    .line 823
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContextView;->a(Landroid/support/v7/view/b;)V

    .line 824
    iput-object v4, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    .line 826
    invoke-virtual {p0}, Landroid/support/v7/a/m;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 827
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ae;->c(Landroid/view/View;F)V

    .line 828
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/ae;->r(Landroid/view/View;)Landroid/support/v4/view/au;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v4/view/au;->a(F)Landroid/support/v4/view/au;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/m;->q:Landroid/support/v4/view/au;

    .line 829
    iget-object v0, p0, Landroid/support/v7/a/m;->q:Landroid/support/v4/view/au;

    new-instance v1, Landroid/support/v7/a/m$6;

    invoke-direct {v1, p0}, Landroid/support/v7/a/m$6;-><init>(Landroid/support/v7/a/m;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/au;->a(Landroid/support/v4/view/ay;)Landroid/support/v4/view/au;

    .line 857
    :cond_6
    :goto_5
    iget-object v0, p0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 858
    iget-object v0, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/m;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 758
    :cond_7
    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    goto/16 :goto_2

    .line 806
    :cond_8
    iget-object v0, p0, Landroid/support/v7/a/m;->x:Landroid/view/ViewGroup;

    sget v4, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    .line 807
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    .line 808
    if-eqz v0, :cond_5

    .line 810
    invoke-virtual {p0}, Landroid/support/v7/a/m;->o()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 811
    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 819
    goto :goto_4

    .line 848
    :cond_a
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0, v7}, Landroid/support/v4/view/ae;->c(Landroid/view/View;F)V

    .line 849
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 852
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_6

    .line 853
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ae;->w(Landroid/view/View;)V

    goto :goto_5

    .line 861
    :cond_b
    iput-object v3, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    goto/16 :goto_1

    :cond_c
    move-object v0, v3

    goto/16 :goto_0
.end method

.method b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    .line 1083
    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1084
    if-eqz v0, :cond_0

    .line 1088
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/support/v7/a/m;->x()V

    .line 282
    iget-object v0, p0, Landroid/support/v7/a/m;->x:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 284
    iget-object v1, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 285
    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 286
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/support/v7/a/m;->x()V

    .line 169
    return-void
.end method

.method b(Landroid/support/v7/view/menu/h;)V
    .locals 2

    .prologue
    .line 1411
    iget-boolean v0, p0, Landroid/support/v7/a/m;->C:Z

    if-eqz v0, :cond_0

    .line 1422
    :goto_0
    return-void

    .line 1415
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/m;->C:Z

    .line 1416
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-interface {v0}, Landroid/support/v7/widget/ae;->k()V

    .line 1417
    invoke-virtual {p0}, Landroid/support/v7/a/m;->r()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1418
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/a/m;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1419
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1421
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/a/m;->C:Z

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/support/v7/a/m;->x()V

    .line 300
    iget-object v0, p0, Landroid/support/v7/a/m;->x:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 301
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 303
    return-void
.end method

.method b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ae;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/a/m;->n()Landroid/support/v7/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 630
    invoke-virtual {p0}, Landroid/support/v7/a/m;->n()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/a;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 631
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/m;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Landroid/support/v7/a/m;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 954
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 977
    :cond_1
    :goto_0
    return v0

    .line 956
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroid/support/v7/a/m;->e(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 959
    :sswitch_1
    iget-boolean v2, p0, Landroid/support/v7/a/m;->F:Z

    .line 960
    iput-boolean v1, p0, Landroid/support/v7/a/m;->F:Z

    .line 962
    invoke-virtual {p0, v1, v1}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v3

    .line 963
    if-eqz v3, :cond_2

    iget-boolean v4, v3, Landroid/support/v7/a/m$d;->o:Z

    if-eqz v4, :cond_2

    .line 964
    if-nez v2, :cond_1

    .line 968
    invoke-virtual {p0, v3, v0}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;Z)V

    goto :goto_0

    .line 972
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/a/m;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 954
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method b(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 655
    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    .line 656
    invoke-virtual {p0}, Landroid/support/v7/a/m;->a()Landroid/support/v7/a/a;

    move-result-object v1

    .line 657
    if-eqz v1, :cond_0

    .line 658
    invoke-virtual {v1, v0}, Landroid/support/v7/a/a;->g(Z)V

    .line 662
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 1008
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    move v6, v7

    .line 1010
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/m;->K:Landroid/support/v7/a/o;

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Landroid/support/v7/a/o;

    invoke-direct {v0}, Landroid/support/v7/a/o;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/m;->K:Landroid/support/v7/a/o;

    .line 1015
    :cond_0
    if-eqz v6, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroid/support/v7/a/m;->a(Landroid/view/ViewParent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v5, v7

    .line 1017
    :goto_1
    iget-object v0, p0, Landroid/support/v7/a/m;->K:Landroid/support/v7/a/o;

    .line 1020
    invoke-static {}, Landroid/support/v7/widget/bl;->a()Z

    move-result v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1017
    invoke-virtual/range {v0 .. v8}, Landroid/support/v7/a/o;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    move v6, v1

    .line 1008
    goto :goto_0

    :cond_2
    move v5, v1

    .line 1015
    goto :goto_1
.end method

.method public c(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 565
    invoke-direct {p0, p1}, Landroid/support/v7/a/m;->h(I)I

    move-result v2

    .line 567
    iget-boolean v3, p0, Landroid/support/v7/a/m;->l:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_0

    .line 602
    :goto_0
    return v0

    .line 570
    :cond_0
    iget-boolean v3, p0, Landroid/support/v7/a/m;->h:Z

    if-eqz v3, :cond_1

    if-ne v2, v1, :cond_1

    .line 572
    iput-boolean v0, p0, Landroid/support/v7/a/m;->h:Z

    .line 575
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 602
    iget-object v0, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_0

    .line 577
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/a/m;->A()V

    .line 578
    iput-boolean v1, p0, Landroid/support/v7/a/m;->h:Z

    move v0, v1

    .line 579
    goto :goto_0

    .line 581
    :sswitch_1
    invoke-direct {p0}, Landroid/support/v7/a/m;->A()V

    .line 582
    iput-boolean v1, p0, Landroid/support/v7/a/m;->i:Z

    move v0, v1

    .line 583
    goto :goto_0

    .line 585
    :sswitch_2
    invoke-direct {p0}, Landroid/support/v7/a/m;->A()V

    .line 586
    iput-boolean v1, p0, Landroid/support/v7/a/m;->j:Z

    move v0, v1

    .line 587
    goto :goto_0

    .line 589
    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/a/m;->A()V

    .line 590
    iput-boolean v1, p0, Landroid/support/v7/a/m;->A:Z

    move v0, v1

    .line 591
    goto :goto_0

    .line 593
    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/a/m;->A()V

    .line 594
    iput-boolean v1, p0, Landroid/support/v7/a/m;->B:Z

    move v0, v1

    .line 595
    goto :goto_0

    .line 597
    :sswitch_5
    invoke-direct {p0}, Landroid/support/v7/a/m;->A()V

    .line 598
    iput-boolean v1, p0, Landroid/support/v7/a/m;->l:Z

    move v0, v1

    .line 599
    goto :goto_0

    .line 575
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method c(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 981
    sparse-switch p1, :sswitch_data_0

    .line 997
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 1000
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/a/m;->a(ILandroid/view/KeyEvent;)Z

    :cond_0
    move v0, v1

    .line 1002
    :goto_1
    return v0

    .line 983
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroid/support/v7/a/m;->d(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 991
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    :goto_2
    iput-boolean v0, p0, Landroid/support/v7/a/m;->F:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 981
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public d()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/support/v7/a/m;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->f(Z)V

    .line 260
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/support/v7/a/m;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->f(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method e(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1425
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/a/m;->a(Landroid/support/v7/a/m$d;Z)V

    .line 1426
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/support/v7/a/m;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 715
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/a/m;->d(I)V

    goto :goto_0
.end method

.method f(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1616
    invoke-virtual {p0, p1, v4}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v0

    .line 1618
    iget-object v1, v0, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_1

    .line 1619
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1620
    iget-object v2, v0, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/h;->c(Landroid/os/Bundle;)V

    .line 1621
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1622
    iput-object v1, v0, Landroid/support/v7/a/m$d;->s:Landroid/os/Bundle;

    .line 1625
    :cond_0
    iget-object v1, v0, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->g()V

    .line 1626
    iget-object v1, v0, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->clear()V

    .line 1628
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/a/m$d;->r:Z

    .line 1629
    iput-boolean v4, v0, Landroid/support/v7/a/m$d;->q:Z

    .line 1632
    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-eqz v0, :cond_3

    .line 1634
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v0

    .line 1635
    if-eqz v0, :cond_3

    .line 1636
    iput-boolean v3, v0, Landroid/support/v7/a/m$d;->m:Z

    .line 1637
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/m;->b(Landroid/support/v7/a/m$d;Landroid/view/KeyEvent;)Z

    .line 1640
    :cond_3
    return-void
.end method

.method g(I)I
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1649
    .line 1651
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    .line 1652
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 1653
    iget-object v0, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 1654
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1657
    iget-object v1, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1658
    iget-object v1, p0, Landroid/support/v7/a/m;->I:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 1659
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/a/m;->I:Landroid/graphics/Rect;

    .line 1660
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/a/m;->J:Landroid/graphics/Rect;

    .line 1662
    :cond_0
    iget-object v1, p0, Landroid/support/v7/a/m;->I:Landroid/graphics/Rect;

    .line 1663
    iget-object v4, p0, Landroid/support/v7/a/m;->J:Landroid/graphics/Rect;

    .line 1664
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1666
    iget-object v5, p0, Landroid/support/v7/a/m;->x:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/widget/bn;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1667
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    .line 1668
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    .line 1670
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1672
    iget-object v1, p0, Landroid/support/v7/a/m;->z:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1673
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/a/m;->z:Landroid/view/View;

    .line 1674
    iget-object v1, p0, Landroid/support/v7/a/m;->z:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 1675
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1674
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1676
    iget-object v1, p0, Landroid/support/v7/a/m;->x:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/a/m;->z:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 1690
    :goto_1
    iget-object v4, p0, Landroid/support/v7/a/m;->z:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 1696
    :goto_2
    iget-boolean v4, p0, Landroid/support/v7/a/m;->j:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v7, v1

    move v1, v3

    move v3, v7

    .line 1706
    :goto_3
    if-eqz v3, :cond_2

    .line 1707
    iget-object v3, p0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v1

    .line 1711
    :goto_4
    iget-object v1, p0, Landroid/support/v7/a/m;->z:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1712
    iget-object v1, p0, Landroid/support/v7/a/m;->z:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1715
    :cond_3
    return p1

    :cond_4
    move v1, v2

    .line 1667
    goto :goto_0

    .line 1680
    :cond_5
    iget-object v1, p0, Landroid/support/v7/a/m;->z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1681
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    .line 1682
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1683
    iget-object v4, p0, Landroid/support/v7/a/m;->z:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    .line 1690
    goto :goto_2

    .line 1701
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 1703
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_3

    .line 1712
    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v3, v2

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method public g()V
    .locals 2

    .prologue
    .line 307
    iget-boolean v0, p0, Landroid/support/v7/a/m;->r:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/m;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 311
    :cond_0
    invoke-super {p0}, Landroid/support/v7/a/h;->g()V

    .line 313
    iget-object v0, p0, Landroid/support/v7/a/m;->f:Landroid/support/v7/a/a;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Landroid/support/v7/a/m;->f:Landroid/support/v7/a/a;

    invoke-virtual {v0}, Landroid/support/v7/a/a;->h()V

    .line 316
    :cond_1
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1053
    invoke-static {v0, p0}, Landroid/support/v4/view/i;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/m;)V

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    invoke-static {v0}, Landroid/support/v4/view/i;->a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/m;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/a/m;

    if-nez v0, :cond_0

    .line 1057
    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public m()V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/support/v7/a/m;->x()V

    .line 175
    iget-boolean v0, p0, Landroid/support/v7/a/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/m;->f:Landroid/support/v7/a/a;

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 180
    new-instance v1, Landroid/support/v7/a/s;

    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/a/m;->i:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/a/s;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/a/m;->f:Landroid/support/v7/a/a;

    .line 185
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/a/m;->f:Landroid/support/v7/a/a;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/support/v7/a/m;->f:Landroid/support/v7/a/a;

    iget-boolean v1, p0, Landroid/support/v7/a/m;->H:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->e(Z)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 183
    new-instance v1, Landroid/support/v7/a/s;

    iget-object v0, p0, Landroid/support/v7/a/m;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/a/s;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/a/m;->f:Landroid/support/v7/a/a;

    goto :goto_1
.end method

.method final t()Z
    .locals 1

    .prologue
    .line 874
    iget-boolean v0, p0, Landroid/support/v7/a/m;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/m;->x:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/m;->x:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ae;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method u()V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Landroid/support/v7/a/m;->q:Landroid/support/v4/view/au;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Landroid/support/v7/a/m;->q:Landroid/support/v4/view/au;

    invoke-virtual {v0}, Landroid/support/v4/view/au;->b()V

    .line 881
    :cond_0
    return-void
.end method

.method v()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 885
    iget-object v1, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    if-eqz v1, :cond_1

    .line 886
    iget-object v1, p0, Landroid/support/v7/a/m;->m:Landroid/support/v7/view/b;

    invoke-virtual {v1}, Landroid/support/v7/view/b;->c()V

    .line 897
    :cond_0
    :goto_0
    return v0

    .line 891
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/a/m;->a()Landroid/support/v7/a/a;

    move-result-object v1

    .line 892
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/a/a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 897
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method w()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1744
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Landroid/support/v7/a/m;->t:Landroid/support/v7/widget/ae;

    invoke-interface {v0}, Landroid/support/v7/widget/ae;->k()V

    .line 1748
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1749
    iget-object v0, p0, Landroid/support/v7/a/m;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/m;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1750
    iget-object v0, p0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1752
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    .line 1760
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/a/m;->u()V

    .line 1762
    invoke-virtual {p0, v2, v2}, Landroid/support/v7/a/m;->a(IZ)Landroid/support/v7/a/m$d;

    move-result-object v0

    .line 1763
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_3

    .line 1764
    iget-object v0, v0, Landroid/support/v7/a/m$d;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->close()V

    .line 1766
    :cond_3
    return-void

    .line 1753
    :catch_0
    move-exception v0

    goto :goto_0
.end method
