.class public final enum Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;
.super Ljava/lang/Enum;
.source "WidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

.field public static final enum INSTANCE:Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private widgetLruCache:Landroid/support/v4/f/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/f",
            "<",
            "Ljava/lang/Integer;",
            "Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;",
            ">;"
        }
    .end annotation
.end field

.field private widgetsHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->INSTANCE:Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

    sget-object v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->INSTANCE:Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

    aput-object v1, v0, v2

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->$VALUES:[Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

    .line 31
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->widgetsHashMap:Ljava/util/HashMap;

    .line 46
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/MultiDexHelper;->getAllClasses(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v1

    if-nez v1, :cond_2

    .line 82
    if-eqz v2, :cond_0

    .line 83
    :try_start_2
    invoke-virtual {v2}, Ldalvik/system/DexFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->widgetsHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to load Widgets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    const-string v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ".tmp"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {v1, v3, v8}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v1

    .line 68
    :goto_1
    :try_start_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_4

    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;

    .line 72
    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;->value()[Ljava/lang/Class;

    move-result-object v3

    .line 74
    array-length v8, v3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_4

    aget-object v9, v3, v0

    .line 75
    new-instance v10, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;

    invoke-direct {v10, v2, v9}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 76
    iget-object v9, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->widgetsHashMap:Ljava/util/HashMap;

    # getter for: Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    invoke-static {v10}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->access$000(Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v11

    invoke-virtual {v11}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getViewLayout()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 65
    :cond_3
    :try_start_5
    new-instance v3, Ldalvik/system/DexFile;

    invoke-direct {v3, v1}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v1, v3

    goto :goto_1

    .line 82
    :cond_4
    if-eqz v1, :cond_9

    .line 83
    :try_start_6
    invoke-virtual {v1}, Ldalvik/system/DexFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v0, v1

    :cond_5
    :goto_3
    move-object v2, v0

    .line 86
    goto/16 :goto_0

    .line 79
    :catch_1
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 80
    :goto_4
    :try_start_7
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 82
    if-eqz v0, :cond_5

    .line 83
    :try_start_8
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    goto :goto_3

    .line 82
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_6

    .line 83
    invoke-virtual {v1}, Ldalvik/system/DexFile;->close()V

    :cond_6
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 98
    :cond_7
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->widgetsHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 99
    new-instance v1, Landroid/support/v4/f/f;

    if-nez v0, :cond_8

    const/4 v0, 0x2

    :cond_8
    invoke-direct {v1, v0}, Landroid/support/v4/f/f;-><init>(I)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->widgetLruCache:Landroid/support/v4/f/f;

    .line 102
    const-string v0, "Loaded Widgets"

    invoke-static {v4, v0}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void

    .line 82
    :catchall_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 79
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto :goto_3
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->$VALUES:[Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;

    return-object v0
.end method


# virtual methods
.method public getDisplayables()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->widgetsHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->widgetsHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;

    .line 143
    # getter for: Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->access$000(Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_0
    return-object v1
.end method

.method public newWidget(Landroid/view/View;I)Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 111
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 114
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->widgetLruCache:Landroid/support/v4/f/f;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/f/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;

    .line 115
    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->widgetsHashMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;

    .line 117
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->widgetLruCache:Landroid/support/v4/f/f;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/f/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    new-array v1, v6, [Ljava/lang/Class;

    .line 121
    const-class v4, Landroid/view/View;

    aput-object v4, v1, v8

    .line 127
    :try_start_0
    # getter for: Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->widgetClass:Ljava/lang/Class;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->access$100(Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 133
    const-wide/16 v4, -0x1

    mul-long/2addr v2, v4

    .line 134
    sget-object v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;->TAG:Ljava/lang/String;

    const-string v4, "newWidget(View, int) took %d millis"

    new-array v5, v6, [Ljava/lang/Object;

    const-wide/32 v6, 0xf4240

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating widget!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
