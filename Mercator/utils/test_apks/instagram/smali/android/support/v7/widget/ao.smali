.class public Landroid/support/v7/widget/ao;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/support/v7/view/menu/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ao$c;,
        Landroid/support/v7/widget/ao$d;,
        Landroid/support/v7/widget/ao$e;,
        Landroid/support/v7/widget/ao$a;,
        Landroid/support/v7/widget/ao$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;


# instance fields
.field private A:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final B:Landroid/support/v7/widget/ao$d;

.field private final C:Landroid/support/v7/widget/ao$c;

.field private final D:Landroid/support/v7/widget/ao$a;

.field private E:Ljava/lang/Runnable;

.field private final F:Landroid/graphics/Rect;

.field private G:Landroid/graphics/Rect;

.field private H:Z

.field c:Landroid/support/v7/widget/ai;

.field d:I

.field final e:Landroid/support/v7/widget/ao$e;

.field final f:Landroid/os/Handler;

.field g:Landroid/widget/PopupWindow;

.field private i:Landroid/content/Context;

.field private j:Landroid/widget/ListAdapter;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Landroid/view/View;

.field private v:I

.field private w:Landroid/database/DataSetObserver;

.field private x:Landroid/view/View;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 85
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ao;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "getMaxAvailableHeight"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ao;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :goto_1
    :try_start_2
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setEpicenterBounds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ao;->h:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    :goto_2
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 100
    :catch_2
    move-exception v0

    .line 101
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 217
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/ao;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/ao;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v0, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v0, p0, Landroid/support/v7/widget/ao;->k:I

    .line 110
    iput v0, p0, Landroid/support/v7/widget/ao;->l:I

    .line 113
    const/16 v0, 0x3ea

    iput v0, p0, Landroid/support/v7/widget/ao;->o:I

    .line 115
    iput-boolean v3, p0, Landroid/support/v7/widget/ao;->q:Z

    .line 117
    iput v2, p0, Landroid/support/v7/widget/ao;->r:I

    .line 119
    iput-boolean v2, p0, Landroid/support/v7/widget/ao;->s:Z

    .line 120
    iput-boolean v2, p0, Landroid/support/v7/widget/ao;->t:Z

    .line 121
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/ao;->d:I

    .line 124
    iput v2, p0, Landroid/support/v7/widget/ao;->v:I

    .line 135
    new-instance v0, Landroid/support/v7/widget/ao$e;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ao$e;-><init>(Landroid/support/v7/widget/ao;)V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->e:Landroid/support/v7/widget/ao$e;

    .line 136
    new-instance v0, Landroid/support/v7/widget/ao$d;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ao$d;-><init>(Landroid/support/v7/widget/ao;)V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->B:Landroid/support/v7/widget/ao$d;

    .line 137
    new-instance v0, Landroid/support/v7/widget/ao$c;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ao$c;-><init>(Landroid/support/v7/widget/ao;)V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->C:Landroid/support/v7/widget/ao$c;

    .line 138
    new-instance v0, Landroid/support/v7/widget/ao$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ao$a;-><init>(Landroid/support/v7/widget/ao;)V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->D:Landroid/support/v7/widget/ao$a;

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    .line 255
    iput-object p1, p0, Landroid/support/v7/widget/ao;->i:Landroid/content/Context;

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->f:Landroid/os/Handler;

    .line 258
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 260
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ao;->m:I

    .line 262
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ao;->n:I

    .line 264
    iget v1, p0, Landroid/support/v7/widget/ao;->n:I

    if-eqz v1, :cond_0

    .line 265
    iput-boolean v3, p0, Landroid/support/v7/widget/ao;->p:Z

    .line 267
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 270
    new-instance v0, Landroid/support/v7/widget/p;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    .line 274
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 275
    return-void

    .line 272
    :cond_1
    new-instance v0, Landroid/support/v7/widget/p;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v7/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)I
    .locals 5

    .prologue
    .line 1399
    sget-object v0, Landroid/support/v7/widget/ao;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1401
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/ao;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 1402
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1401
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1408
    :goto_0
    return v0

    .line 1403
    :catch_0
    move-exception v0

    .line 1404
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Landroid/support/v7/widget/ao;->u:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Landroid/support/v7/widget/ao;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 759
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 760
    check-cast v0, Landroid/view/ViewGroup;

    .line 761
    iget-object v1, p0, Landroid/support/v7/widget/ao;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 764
    :cond_0
    return-void
.end method

.method private b()I
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1124
    .line 1126
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    if-nez v0, :cond_5

    .line 1127
    iget-object v5, p0, Landroid/support/v7/widget/ao;->i:Landroid/content/Context;

    .line 1135
    new-instance v0, Landroid/support/v7/widget/ao$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ao$1;-><init>(Landroid/support/v7/widget/ao;)V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->E:Ljava/lang/Runnable;

    .line 1146
    iget-boolean v0, p0, Landroid/support/v7/widget/ao;->H:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v5, v0}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;Z)Landroid/support/v7/widget/ai;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    .line 1147
    iget-object v0, p0, Landroid/support/v7/widget/ao;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    iget-object v6, p0, Landroid/support/v7/widget/ao;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ai;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1150
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    iget-object v6, p0, Landroid/support/v7/widget/ao;->j:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ai;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1151
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    iget-object v6, p0, Landroid/support/v7/widget/ao;->z:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ai;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1152
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai;->setFocusable(Z)V

    .line 1153
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai;->setFocusableInTouchMode(Z)V

    .line 1154
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    new-instance v6, Landroid/support/v7/widget/ao$2;

    invoke-direct {v6, p0}, Landroid/support/v7/widget/ao$2;-><init>(Landroid/support/v7/widget/ao;)V

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ai;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1172
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    iget-object v6, p0, Landroid/support/v7/widget/ao;->C:Landroid/support/v7/widget/ao$c;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ai;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1174
    iget-object v0, p0, Landroid/support/v7/widget/ao;->A:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 1175
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    iget-object v6, p0, Landroid/support/v7/widget/ao;->A:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ai;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1178
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    .line 1180
    iget-object v7, p0, Landroid/support/v7/widget/ao;->u:Landroid/view/View;

    .line 1181
    if-eqz v7, :cond_c

    .line 1184
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1185
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1187
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1191
    iget v8, p0, Landroid/support/v7/widget/ao;->v:I

    packed-switch v8, :pswitch_data_0

    .line 1203
    const-string v0, "ListPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid hint position "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Landroid/support/v7/widget/ao;->v:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    if-ltz v0, :cond_4

    .line 1213
    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    move v5, v0

    move v0, v4

    .line 1218
    :goto_2
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1220
    invoke-virtual {v7, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1222
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1223
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v7

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    move-object v5, v6

    .line 1229
    :goto_3
    iget-object v6, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move v6, v0

    .line 1244
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1245
    if-eqz v0, :cond_6

    .line 1246
    iget-object v5, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1247
    iget-object v0, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    .line 1251
    iget-boolean v5, p0, Landroid/support/v7/widget/ao;->p:Z

    if-nez v5, :cond_a

    .line 1252
    iget-object v5, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/ao;->n:I

    move v7, v0

    .line 1260
    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    .line 1261
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_7

    .line 1262
    :goto_6
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->i()Landroid/view/View;

    move-result-object v0

    iget v5, p0, Landroid/support/v7/widget/ao;->n:I

    invoke-direct {p0, v0, v5, v1}, Landroid/support/v7/widget/ao;->a(Landroid/view/View;IZ)I

    move-result v5

    .line 1264
    iget-boolean v0, p0, Landroid/support/v7/widget/ao;->s:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/ao;->k:I

    if-ne v0, v3, :cond_8

    .line 1265
    :cond_2
    add-int v0, v5, v7

    .line 1297
    :goto_7
    return v0

    :cond_3
    move v0, v2

    .line 1146
    goto/16 :goto_0

    .line 1193
    :pswitch_0
    invoke-virtual {v6, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1198
    :pswitch_1
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1199
    invoke-virtual {v6, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    move v0, v2

    move v5, v2

    .line 1216
    goto :goto_2

    .line 1231
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1232
    iget-object v5, p0, Landroid/support/v7/widget/ao;->u:Landroid/view/View;

    .line 1233
    if-eqz v5, :cond_b

    .line 1235
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1236
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    move v6, v0

    goto :goto_4

    .line 1255
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v7, v2

    .line 1256
    goto :goto_5

    :cond_7
    move v1, v2

    .line 1261
    goto :goto_6

    .line 1269
    :cond_8
    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    packed-switch v0, :pswitch_data_1

    .line 1283
    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1289
    :goto_8
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    sub-int v4, v5, v6

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/ai;->a(IIIII)I

    move-result v0

    .line 1291
    if-lez v0, :cond_9

    .line 1292
    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    invoke-virtual {v1}, Landroid/support/v7/widget/ai;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    .line 1293
    invoke-virtual {v2}, Landroid/support/v7/widget/ai;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1294
    add-int/2addr v1, v7

    add-int/2addr v6, v1

    .line 1297
    :cond_9
    add-int/2addr v0, v6

    goto :goto_7

    .line 1271
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/ao;->i:Landroid/content/Context;

    .line 1272
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v8

    sub-int/2addr v0, v1

    .line 1271
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_8

    .line 1277
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/ao;->i:Landroid/content/Context;

    .line 1278
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    sub-int/2addr v0, v1

    .line 1277
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_8

    :cond_a
    move v7, v0

    goto/16 :goto_5

    :cond_b
    move v6, v2

    goto/16 :goto_4

    :cond_c
    move-object v5, v0

    move v0, v2

    goto/16 :goto_3

    .line 1191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1269
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Z)V
    .locals 5

    .prologue
    .line 1389
    sget-object v0, Landroid/support/v7/widget/ao;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1391
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/ao;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :cond_0
    :goto_0
    return-void

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Z)Landroid/support/v7/widget/ai;
    .locals 1

    .prologue
    .line 920
    new-instance v0, Landroid/support/v7/widget/ai;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/ai;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 309
    iput p1, p0, Landroid/support/v7/widget/ao;->v:I

    .line 310
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Landroid/support/v7/widget/ao;->G:Landroid/graphics/Rect;

    .line 516
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Landroid/support/v7/widget/ao;->z:Landroid/widget/AdapterView$OnItemClickListener;

    .line 599
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v7/widget/ao;->w:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 285
    new-instance v0, Landroid/support/v7/widget/ao$b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ao$b;-><init>(Landroid/support/v7/widget/ao;)V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->w:Landroid/database/DataSetObserver;

    .line 289
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/ao;->j:Landroid/widget/ListAdapter;

    .line 290
    iget-object v0, p0, Landroid/support/v7/widget/ao;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Landroid/support/v7/widget/ao;->w:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 294
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->j:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 297
    :cond_2
    return-void

    .line 286
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ao;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/support/v7/widget/ao;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->w:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 754
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 332
    iput-boolean p1, p0, Landroid/support/v7/widget/ao;->H:Z

    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 334
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 439
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Landroid/support/v7/widget/ao;->x:Landroid/view/View;

    .line 468
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 483
    iput p1, p0, Landroid/support/v7/widget/ao;->m:I

    .line 484
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Landroid/support/v7/widget/ao;->H:Z

    return v0
.end method

.method public d()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 642
    invoke-direct {p0}, Landroid/support/v7/widget/ao;->b()I

    move-result v2

    .line 644
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->n()Z

    move-result v6

    .line 645
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/widget/ao;->o:I

    invoke-static {v0, v4}, Landroid/support/v4/widget/s;->a(Landroid/widget/PopupWindow;I)V

    .line 647
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 649
    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    if-ne v0, v5, :cond_3

    move v4, v5

    .line 660
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/ao;->k:I

    if-ne v0, v5, :cond_9

    .line 663
    if-eqz v6, :cond_5

    .line 664
    :goto_1
    if-eqz v6, :cond_7

    .line 665
    iget-object v6, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    if-ne v0, v5, :cond_6

    move v0, v5

    :goto_2
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 667
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v6, v2

    .line 679
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroid/support/v7/widget/ao;->t:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/widget/ao;->s:Z

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 681
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->i()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ao;->m:I

    iget v3, p0, Landroid/support/v7/widget/ao;->n:I

    if-gez v4, :cond_1

    move v4, v5

    :cond_1
    if-gez v6, :cond_b

    :goto_4
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 733
    :cond_2
    :goto_5
    return-void

    .line 653
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    if-ne v0, v7, :cond_4

    .line 654
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    move v4, v0

    goto :goto_0

    .line 656
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    move v4, v0

    goto :goto_0

    :cond_5
    move v2, v5

    .line 663
    goto :goto_1

    :cond_6
    move v0, v1

    .line 665
    goto :goto_2

    .line 669
    :cond_7
    iget-object v6, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    if-ne v0, v5, :cond_8

    move v0, v5

    :goto_6
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v6, v2

    goto :goto_3

    :cond_8
    move v0, v1

    .line 669
    goto :goto_6

    .line 673
    :cond_9
    iget v0, p0, Landroid/support/v7/widget/ao;->k:I

    if-ne v0, v7, :cond_a

    move v6, v2

    .line 674
    goto :goto_3

    .line 676
    :cond_a
    iget v0, p0, Landroid/support/v7/widget/ao;->k:I

    move v6, v0

    goto :goto_3

    :cond_b
    move v5, v6

    .line 681
    goto :goto_4

    .line 686
    :cond_c
    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    if-ne v0, v5, :cond_11

    move v0, v5

    .line 697
    :goto_7
    iget v4, p0, Landroid/support/v7/widget/ao;->k:I

    if-ne v4, v5, :cond_13

    move v2, v5

    .line 707
    :cond_d
    :goto_8
    iget-object v4, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 708
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 709
    invoke-direct {p0, v3}, Landroid/support/v7/widget/ao;->b(Z)V

    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroid/support/v7/widget/ao;->t:Z

    if-nez v2, :cond_14

    iget-boolean v2, p0, Landroid/support/v7/widget/ao;->s:Z

    if-nez v2, :cond_14

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->B:Landroid/support/v7/widget/ao$d;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 715
    sget-object v0, Landroid/support/v7/widget/ao;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    .line 717
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/ao;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/ao;->G:Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :cond_e
    :goto_a
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->i()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ao;->m:I

    iget v3, p0, Landroid/support/v7/widget/ao;->n:I

    iget v4, p0, Landroid/support/v7/widget/ao;->r:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/widget/s;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 724
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ai;->setSelection(I)V

    .line 726
    iget-boolean v0, p0, Landroid/support/v7/widget/ao;->H:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 727
    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->m()V

    .line 729
    :cond_10
    iget-boolean v0, p0, Landroid/support/v7/widget/ao;->H:Z

    if-nez v0, :cond_2

    .line 730
    iget-object v0, p0, Landroid/support/v7/widget/ao;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->D:Landroid/support/v7/widget/ao$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 689
    :cond_11
    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    if-ne v0, v7, :cond_12

    .line 690
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_7

    .line 692
    :cond_12
    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    goto :goto_7

    .line 700
    :cond_13
    iget v4, p0, Landroid/support/v7/widget/ao;->k:I

    if-eq v4, v7, :cond_d

    .line 703
    iget v2, p0, Landroid/support/v7/widget/ao;->k:I

    goto :goto_8

    :cond_14
    move v3, v1

    .line 713
    goto :goto_9

    .line 718
    :catch_0
    move-exception v0

    .line 719
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 502
    iput p1, p0, Landroid/support/v7/widget/ao;->n:I

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ao;->p:Z

    .line 504
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 740
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 741
    invoke-direct {p0}, Landroid/support/v7/widget/ao;->a()V

    .line 742
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 743
    iput-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    .line 744
    iget-object v0, p0, Landroid/support/v7/widget/ao;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->e:Landroid/support/v7/widget/ao$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 745
    return-void
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 525
    iput p1, p0, Landroid/support/v7/widget/ao;->r:I

    .line 526
    return-void
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 542
    iput p1, p0, Landroid/support/v7/widget/ao;->l:I

    .line 543
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public g()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    return-object v0
.end method

.method public g(I)V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_0

    .line 554
    iget-object v1, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 555
    iget-object v0, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/ao;->F:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ao;->l:I

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ao;->f(I)V

    goto :goto_0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 780
    return-void
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/ao;->x:Landroid/view/View;

    return-object v0
.end method

.method public i(I)V
    .locals 3

    .prologue
    .line 798
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    .line 799
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 800
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai;->setListSelectionHidden(Z)V

    .line 801
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ai;->setSelection(I)V

    .line 803
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 804
    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/ai;->setItemChecked(IZ)V

    .line 809
    :cond_0
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Landroid/support/v7/widget/ao;->m:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Landroid/support/v7/widget/ao;->p:Z

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    .line 493
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ao;->n:I

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Landroid/support/v7/widget/ao;->l:I

    return v0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/ai;

    .line 817
    if-eqz v0, :cond_0

    .line 819
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai;->setListSelectionHidden(Z)V

    .line 821
    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->requestLayout()V

    .line 823
    :cond_0
    return-void
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Landroid/support/v7/widget/ao;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
